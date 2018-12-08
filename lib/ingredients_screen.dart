import 'package:flutter/material.dart';
import 'package:is_this_really_vegan/data/l10n/de_non_vegan.dart';
import 'package:is_this_really_vegan/data/l10n/nl_non_vegan.dart';
import 'package:is_this_really_vegan/data/l10n/se_non_vegan.dart';
import 'package:is_this_really_vegan/data/non_vegan.dart';
import 'package:mlkit/mlkit.dart';

class IngredientsScreen extends StatelessWidget {
  final List<VisionText> recognizedLabels;
  List<String> foundNonVegan;

  List<String> foundL10lNonVegan;
  int l10nIndex;

  List<List<String>> l10ns = [
    deNonVeganIngredients,
    seNonVeganIngredients,
    nlNonVeganIngredients
  ];

  IngredientsScreen(this.recognizedLabels) {
    final ingredients = rawIngredientsString();
    foundNonVegan = matchesInString(nonVeganIngredients, ingredients);
    if (foundNonVegan.isEmpty) {
      for (var i = 0; i < 3; i++) {
        foundL10lNonVegan = matchesInString(l10ns[i], ingredients);
        if (foundL10lNonVegan.isNotEmpty) {
          l10nIndex = i;
          break;
        }
      }
    }
  }

  String rawIngredientsString() {
    final rawIngredients = recognizedLabels
        .map((visionText) => visionText.text)
        .join(" ")
        .replaceAll(RegExp(r"[^\s\w]"), " ")
        .replaceAll("\n", " ")
        .toLowerCase();
    final withSpacesRaw = " $rawIngredients ";
    print(withSpacesRaw);
    return withSpacesRaw;
  }

  List<String> matchesInString(List<String> needles, String haystack) {
    return needles
        .map((needle) => needle.toLowerCase())
        .where((needle) => haystack.contains(" $needle "))
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
    if (recognizedLabels.isEmpty) {
      return Center(
        child: const Text("Unable to recognize ingredients. Please try again!"),
      );
    }

    if (foundNonVegan.isEmpty && foundL10lNonVegan.isEmpty) {
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

    if (foundNonVegan.isNotEmpty) {
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

    return ListView.builder(
        itemCount: foundL10lNonVegan.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.clear, color: Colors.red),
            title:
            Text('${foundL10lNonVegan[index]} (${nonVeganIngredients[
            l10ns[l10nIndex].indexOf(foundL10lNonVegan[index])
            ]})', style: TextStyle(fontSize: 18)),
          );
        });
  }
}
