import 'package:flutter/material.dart';
import 'package:mlkit/mlkit.dart';

class IngredientsScreen extends StatelessWidget {
  final List<VisionText> recognizedLabels;

  IngredientsScreen(this.recognizedLabels);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recognized ingredients'),
      ),
      body: ListView.builder(
        itemCount: recognizedLabels.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${recognizedLabels[index]}'),
          );
        },
      ),
    );
  }
}
