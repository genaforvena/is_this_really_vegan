import 'package:flutter/material.dart';
import 'package:is_this_really_vegan/data/non_vegan.dart';
import 'package:mlkit/mlkit.dart';

class IngredientsScreen extends StatelessWidget {
  final List<VisionText> recognizedLabels;
  List<String> foundNonVegan;

  IngredientsScreen(this.recognizedLabels) {
    final rawIngredients = recognizedLabels
        .map((visionText) => visionText.text)
        .join(" ")
        .replaceAll(RegExp(r"[^\s\w]"), " ")
        .replaceAll("\n", " ")
        .toLowerCase();
    final withSpacesRaw = " $rawIngredients ";
    print(withSpacesRaw);
    foundNonVegan = nonVeganIngredients
        .where((ingredient) => withSpacesRaw.contains(" $ingredient "))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Non vegan ingredients'),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (recognizedLabels.length == 0) {
      return Center(
        child: const Text("Unable to recognize ingredients. Please try again!"),
      );
    }

    if (foundNonVegan.length == 0) {
      return Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Icon(Icons.check, size: 40, color: Colors.green),
          const Text("This seems to be really vegan!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        ],
      ));
    }

    return ListView.builder(
      itemCount: foundNonVegan.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.clear, color: Colors.red),
          title:
              Text('${foundNonVegan[index]}', style: TextStyle(fontSize: 18)),
        );
      },
    );
  }
}
