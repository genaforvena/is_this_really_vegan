import 'dart:async';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:is_this_really_vegan/ingredients_screen.dart';
import 'package:mlkit/mlkit.dart';
import 'package:path_provider/path_provider.dart';

class CameraScreen extends StatefulWidget {
  final List<CameraDescription> cameras;

  CameraScreen({this.cameras});

  @override
  CameraScreenState createState() {
    return CameraScreenState(cameras);
  }
}

void logError(String code, String message) =>
    print('Error: $code\nError Message: $message');

class CameraScreenState extends State<CameraScreen> {
  final List<CameraDescription> cameras;
  final FirebaseVisionTextDetector _detector =
      FirebaseVisionTextDetector.instance;
  CameraController _controller;
  bool _isProcessing = false;
  String _imagePath;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  CameraScreenState(this.cameras);

  @override
  void initState() {
    super.initState();
    _initBackCamera();
  }

  @override
  void dispose() {
    super.dispose();
    if (_controller != null) {
      _controller.dispose();
      _controller = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        body: Stack(children: <Widget>[
          Column(children: <Widget>[
            Expanded(
              child: CameraPanel(
                cameraController: _controller,
                imagePath: _imagePath,
              ),
            ),
            ControlsPanel(
              controller: _controller,
              imagePath: _imagePath,
              onTakePicturePressed: _takePicture,
              onCheckIngredientsPressed: _checkIngredients,
              onRetakePicturePressed: _disposePicture,
            ),
          ]),
          LoadingIndicator(
            isLoading: _isProcessing,
          ),
        ]));
  }

  void _disposePicture() {
    setState(() {
      _imagePath = null;
    });
  }

  void _checkIngredients() async {
    setState(() {
      _isProcessing = true;
    });

    try {
      var labels = await _detector.detectFromPath(_imagePath);
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => IngredientsScreen(recognizedLabels: labels)));
    } catch (e) {
      print('Error: Error Message: $e');
      _showInSnackBar("Failed to detect text!");
    }
    setState(() {
      _isProcessing = false;
    });
  }

  String _timestamp() => DateTime.now().millisecondsSinceEpoch.toString();

  void _showInSnackBar(String message) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(message)));
  }

  void _initBackCamera() async {
    final cameraDescription =
        cameras.firstWhere((c) => c.lensDirection == CameraLensDirection.back);

    if (cameraDescription == null) {
      _showInSnackBar('No back camera detected!');
      return;
    }

    if (_controller != null) {
      await _controller.dispose();
    }
    _controller = CameraController(cameraDescription, ResolutionPreset.high);

    // If the controller is updated then update the UI.
    _controller.addListener(() {
      if (mounted) setState(() {});
      if (_controller.value.hasError) {
        _showInSnackBar('Camera error ${_controller.value.errorDescription}');
      }
    });

    try {
      await _controller.initialize();
    } on CameraException catch (e) {
      _showCameraException(e);
    }

    if (mounted) {
      setState(() {});
    }
  }

  void _takePicture() {
    _takePictureAndSave().then((String filePath) {
      if (mounted) {
        setState(() {
          _imagePath = filePath;
        });
      }
    });
  }

  Future<String> _takePictureAndSave() async {
    if (!_controller.value.isInitialized) {
      _showInSnackBar('Error: select a camera first.');
      return null;
    }
    final Directory extDir = await getApplicationDocumentsDirectory();
    final String dirPath = '${extDir.path}/Pictures/flutter_test';
    await Directory(dirPath).create(recursive: true);
    final String filePath = '$dirPath/${_timestamp()}.jpg';

    if (_controller.value.isTakingPicture) {
      // A capture is already pending, do nothing.
      return null;
    }

    try {
      await _controller.takePicture(filePath);
    } on CameraException catch (e) {
      _showCameraException(e);
      return null;
    }
    return filePath;
  }

  void _showCameraException(CameraException e) {
    logError(e.code, e.description);
    _showInSnackBar('Error: ${e.code}\n${e.description}');
  }
}

class CameraPanel extends StatelessWidget {
  final CameraController cameraController;
  final String imagePath;

  const CameraPanel({Key key, this.cameraController, this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (imagePath != null) {
      return Container(
          child: Container(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: FileImage(File(imagePath)),
              fit: BoxFit.fill,
            ),
          ));
    }

    if (cameraController == null || !cameraController.value.isInitialized) {
      return const Text(
        'Wait for camera',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24.0,
          fontWeight: FontWeight.w900,
        ),
      );
    } else {
      return CameraPreview(cameraController);
    }
  }
}

class LoadingIndicator extends StatelessWidget {
  final bool isLoading;

  const LoadingIndicator({Key key, this.isLoading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!isLoading) {
      return Container();
    }

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
}

class ControlsPanel extends StatelessWidget {
  final CameraController controller;
  final String imagePath;
  final Function onTakePicturePressed;
  final Function onRetakePicturePressed;
  final Function onCheckIngredientsPressed;

  const ControlsPanel(
      {Key key,
      this.controller,
      this.imagePath,
      this.onTakePicturePressed,
      this.onRetakePicturePressed,
      this.onCheckIngredientsPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controls = <Widget>[];
    if (imagePath == null) {
      controls.add(IconButton(
        icon: const Icon(Icons.camera_alt),
        color: Colors.blue,
        onPressed: controller != null && controller.value.isInitialized
            ? onTakePicturePressed
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
            onPressed: onCheckIngredientsPressed)
      ]);
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: controls,
    );
  }
}
