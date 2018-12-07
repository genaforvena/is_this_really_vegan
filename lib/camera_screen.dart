import 'dart:async';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:is_this_really_vegan/ingredients_screen.dart';
import 'package:mlkit/mlkit.dart';
import 'package:path_provider/path_provider.dart';

class CameraScreen extends StatefulWidget {
  final List<CameraDescription> cameras;

  CameraScreen(this.cameras);

  @override
  _CameraScreenState createState() {
    return _CameraScreenState(cameras);
  }
}

void logError(String code, String message) =>
    print('Error: $code\nError Message: $message');

class _CameraScreenState extends State<CameraScreen> {
  final List<CameraDescription> cameras;
  bool isProcessing = false;
  CameraController controller;
  String imagePath;
  FirebaseVisionTextDetector detector = FirebaseVisionTextDetector.instance;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  _CameraScreenState(this.cameras) {
    _selectCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Is this really vegan?'),
      ),
      body: _bodyWidget(),
    );
  }

  Widget _bodyWidget() {
    var content = <Widget>[
      Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Center(
                    child: _cameraOrImageWidget(),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(
                    color: controller != null &&
                        controller.value.isRecordingVideo
                        ? Colors.redAccent
                        : Colors.grey,
                    width: 3.0,
                  ),
                ),
              ),
            ),
            _captureControlRowWidget()
          ]
      )
    ];

    if (isProcessing) {
      content.add(_loadingIndicatorWidget());
    }

    return Stack(children: content);
  }

  Widget _loadingIndicatorWidget() {
    return Stack(
      children: [
        Opacity(
          opacity: 0.3,
          child: const ModalBarrier(dismissible: false, color: Colors.grey),
        ),
        Center(
          child: CircularProgressIndicator(),
        ),
      ],
    );
  }

  Widget _cameraOrImageWidget() {
    if (imagePath != null) {
      return _takenPicturePreview();
    } else {
      return _cameraPreviewWidget();
    }
  }

  /// Display the preview from the camera (or a message if the preview is not available).
  Widget _cameraPreviewWidget() {
    if (controller == null || !controller.value.isInitialized) {
      return const Text(
        'Wait for camera',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24.0,
          fontWeight: FontWeight.w900,
        ),
      );
    } else {
      return AspectRatio(
        aspectRatio: controller.value.aspectRatio,
        child: CameraPreview(controller),
      );
    }
  }

  Widget _takenPicturePreview() {
    return Image.file(File(imagePath));
  }

  Widget _captureControlRowWidget() {
    var controls = <Widget>[];
    if (imagePath == null) {
      controls.add(IconButton(
        icon: const Icon(Icons.camera_alt),
        color: Colors.blue,
        onPressed: controller != null &&
            controller.value.isInitialized
            ? onTakePictureButtonPressed
            : null,
      ));
    } else {
      controls.addAll([
        IconButton(
            icon: const Icon(Icons.clear),
            color: Colors.red,
            onPressed: onRetakePicturePressed),
        IconButton(
            icon: const Icon(Icons.search),
            color: Colors.green,
            onPressed: onCheckPressed)
      ]);
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: controls,
    );
  }

  void onRetakePicturePressed() {
    setState(() {
      imagePath = null;
    });
  }

  void onCheckPressed() async {
    setState(() {
      isProcessing = true;
    });

    try {
      var labels = await detector.detectFromPath(imagePath);
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => IngredientsScreen(labels)));
    } catch (e) {
      print('Error: Error Message: $e');
      showInSnackBar("Failed to detect text!");
    }
    setState(() {
      isProcessing = false;
    });
  }

  String timestamp() =>
      DateTime
          .now()
          .millisecondsSinceEpoch
          .toString();

  void showInSnackBar(String message) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(message)));
  }

  void _selectCamera() async {
    final cameraDescription =
    cameras.firstWhere((c) => c.lensDirection == CameraLensDirection.back);

    if (cameraDescription == null) {
      showInSnackBar('No back camera detected!');
      return;
    }

    if (controller != null) {
      await controller.dispose();
    }
    controller = CameraController(cameraDescription, ResolutionPreset.high);

    // If the controller is updated then update the UI.
    controller.addListener(() {
      if (mounted) setState(() {});
      if (controller.value.hasError) {
        showInSnackBar('Camera error ${controller.value.errorDescription}');
      }
    });

    try {
      await controller.initialize();
    } on CameraException catch (e) {
      _showCameraException(e);
    }

    if (mounted) {
      setState(() {});
    }
  }

  void onTakePictureButtonPressed() {
    takePicture().then((String filePath) {
      if (mounted) {
        setState(() {
          imagePath = filePath;
        });
      }
    });
  }

  Future<String> takePicture() async {
    if (!controller.value.isInitialized) {
      showInSnackBar('Error: select a camera first.');
      return null;
    }
    final Directory extDir = await getApplicationDocumentsDirectory();
    final String dirPath = '${extDir.path}/Pictures/flutter_test';
    await Directory(dirPath).create(recursive: true);
    final String filePath = '$dirPath/${timestamp()}.jpg';

    if (controller.value.isTakingPicture) {
      // A capture is already pending, do nothing.
      return null;
    }

    try {
      await controller.takePicture(filePath);
    } on CameraException catch (e) {
      _showCameraException(e);
      return null;
    }
    return filePath;
  }

  void _showCameraException(CameraException e) {
    logError(e.code, e.description);
    showInSnackBar('Error: ${e.code}\n${e.description}');
  }
}
