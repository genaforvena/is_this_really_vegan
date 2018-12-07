import 'package:flutter/material.dart';
import 'package:mlkit/mlkit.dart';

class IngredientsScreen extends StatelessWidget {
  final List<VisionText> recognizedLabels;
  List<String> foundNonVegan;

  IngredientsScreen(this.recognizedLabels) {
    final text = recognizedLabels
        .map((visionText) => visionText.text)
        .join("");
    // TODO
    foundNonVegan = [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recognized ingredients'),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (recognizedLabels.length == 0) {
      return Center(
        child: const Text(
            "Unable to recognize ingredients. Please try again!"),
      );
    }

    if (foundNonVegan.length == 0) {
      return Center(
        child: const Text(
            "This seems to be really vegan!"),
      );
    }

    return ListView.builder(
      itemCount: foundNonVegan.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('${foundNonVegan[index]}'),
        );
      },
    )
  }
}
