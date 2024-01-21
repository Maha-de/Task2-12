import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

import '../models/recipe_model.dart';

class RecipeProvider extends ChangeNotifier {
  List<Recipe>? _recipeList;
  List<Recipe>? get recipeList => _recipeList;

  Future<void> getRecipes() async {
    try {
      var result = await FirebaseFirestore.instance
          .collection("Recipes")
          // .where("isActive", isEqualTo: true)
          .get();
      if (result.docs.isNotEmpty) {
        _recipeList = List<Recipe>.from(
            result.docs.map((doc) => Recipe.fromJson(doc.data(), doc.id)));
        print("Succsess to recive list");
        print(result);
        // print("Error in listtttttttttttttttttttttt ${recipeList?.length}");
      } else {
        _recipeList = [];
      }
      notifyListeners();
    } catch (e) {
      _recipeList = [];
      notifyListeners();
    }
  }

  getDataStream() {}
}
