import 'package:flutter/material.dart';
import 'package:is_this_really_vegan/data/l10n/de_non_vegan.dart';
import 'package:is_this_really_vegan/data/l10n/nl_non_vegan.dart';
import 'package:is_this_really_vegan/data/l10n/se_non_vegan.dart';
import 'package:is_this_really_vegan/data/non_vegan.dart';
import 'package:mlkit/mlkit.dart';

class IngredientsScreen extends StatelessWidget {
  final List<VisionText> recognizedLabels;
  final List<String> foundNonVegan;
  final List<String> foundL10nNonVegan;
  final int l10nIndex;

  static const List<List<String>> l10ns = [
    deNonVeganIngredients,
    seNonVeganIngredients,
    nlNonVeganIngredients
  ];

  IngredientsScreen._(
      {Key key,
      this.recognizedLabels,
      this.foundNonVegan,
      this.foundL10nNonVegan,
      this.l10nIndex})
      : super(key: key);

  factory IngredientsScreen({List<VisionText> recognizedLabels}) {
    final ingredients = _rawIngredientsString(recognizedLabels);
    final foundNonVegan = _matchesInString(nonVeganIngredients, ingredients);
    List<String> foundL10nNonVegan;
    int l10nIndex;
    if (foundNonVegan.isEmpty) {
      for (var i = 0; i < 3; i++) {
        foundL10nNonVegan = _matchesInString(l10ns[i], ingredients);
        if (foundL10nNonVegan.isNotEmpty) {
          l10nIndex = i;
          break;
        }
      }
    }
    return IngredientsScreen._(
      recognizedLabels: recognizedLabels,
      foundNonVegan: foundNonVegan,
      foundL10nNonVegan: foundL10nNonVegan,
      l10nIndex: l10nIndex,
    );
  }

  static String _rawIngredientsString(List<VisionText> labels) {
    final rawIngredients = labels
        .map((visionText) => visionText.text)
        .join(" ")
        .replaceAll(RegExp(r"[^\s\w]"), " ")
        .replaceAll("\n", " ")
        .toLowerCase();
    final withSpacesRaw = " $rawIngredients ";
    print(withSpacesRaw);
    return withSpacesRaw;
  }

  static List<String> _matchesInString(List<String> needles, String haystack) {
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
    if (foundNonVegan.isNotEmpty) {
      return FoundNonVeganList(
        foundNonVegan: foundNonVegan,
      );
    }

    if (foundL10nNonVegan.isNotEmpty) {
      return L10nFoundNonVeganList(
        foundL10nNonVegan: foundL10nNonVegan,
        l10n: l10ns[l10nIndex],
      );
    }

    if (foundNonVegan.isEmpty && foundL10nNonVegan.isEmpty) {
      return ReallyVeganLabel();
    }

    if (recognizedLabels.isEmpty) {
      return RecognitionErrorLabel();
    }
  }
}

class RecognitionErrorLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Text("Unable to recognize ingredients. Please try again!"),
    );
  }
}

class ReallyVeganLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
}

class FoundNonVeganList extends StatelessWidget {
  final List<String> foundNonVegan;

  const FoundNonVeganList({Key key, this.foundNonVegan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

class L10nFoundNonVeganList extends StatelessWidget {
  final List<String> foundL10nNonVegan;
  final List<String> l10n;

  const L10nFoundNonVeganList({Key key, this.foundL10nNonVegan, this.l10n})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: foundL10nNonVegan.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.clear, color: Colors.red),
            title: Text(
                '${foundL10nNonVegan[index]} (${nonVeganIngredients[l10n.indexOf(foundL10nNonVegan[index])]})',
                style: TextStyle(fontSize: 18)),
          );
        });
  }
}
