// To parse this JSON data, do
//
//     final adModel = adModelFromJson(jsonString);

// import 'dart:convert';
//
// AdModel adModelFromJson(String str) => AdModel.fromJson(json.decode(str));
//
// String adModelToJson(AdModel data) => json.encode(data.toJson());
//
// class AdModel {
//   List<Recipe> recipes;
//
//   AdModel({
//     required this.recipes,
//   });
//
//   factory AdModel.fromJson(Map<String, dynamic> json) => AdModel(
//     recipes: List<Recipe>.from(json["recipes"].map((x) => Recipe.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "recipes": List<dynamic>.from(recipes.map((x) => x.toJson())),
//   };
// }
//
// class Recipe {
//   bool vegetarian;
//   bool vegan;
//   bool glutenFree;
//   bool dairyFree;
//   bool veryHealthy;
//   bool cheap;
//   bool veryPopular;
//   bool sustainable;
//   bool lowFodmap;
//   int weightWatcherSmartPoints;
//   String gaps;
//   int preparationMinutes;
//   int cookingMinutes;
//   int aggregateLikes;
//   int healthScore;
//   String creditsText;
//   String license;
//   String sourceName;
//   double pricePerServing;
//   List<ExtendedIngredient> extendedIngredients;
//   int id;
//   String title;
//   int readyInMinutes;
//   int servings;
//   String sourceUrl;
//   String image;
//   String imageType;
//   String summary;
//   List<String> cuisines;
//   List<String> dishTypes;
//   List<dynamic> diets;
//   List<dynamic> occasions;
//   String instructions;
//   List<AnalyzedInstruction> analyzedInstructions;
//   dynamic originalId;
//   double spoonacularScore;
//   String spoonacularSourceUrl;
//
//   Recipe({
//     required this.vegetarian,
//     required this.vegan,
//     required this.glutenFree,
//     required this.dairyFree,
//     required this.veryHealthy,
//     required this.cheap,
//     required this.veryPopular,
//     required this.sustainable,
//     required this.lowFodmap,
//     required this.weightWatcherSmartPoints,
//     required this.gaps,
//     required this.preparationMinutes,
//     required this.cookingMinutes,
//     required this.aggregateLikes,
//     required this.healthScore,
//     required this.creditsText,
//     required this.license,
//     required this.sourceName,
//     required this.pricePerServing,
//     required this.extendedIngredients,
//     required this.id,
//     required this.title,
//     required this.readyInMinutes,
//     required this.servings,
//     required this.sourceUrl,
//     required this.image,
//     required this.imageType,
//     required this.summary,
//     required this.cuisines,
//     required this.dishTypes,
//     required this.diets,
//     required this.occasions,
//     required this.instructions,
//     required this.analyzedInstructions,
//     required this.originalId,
//     required this.spoonacularScore,
//     required this.spoonacularSourceUrl,
//   });
//
//   factory Recipe.fromJson(Map<String, dynamic> json) => Recipe(
//     vegetarian: json["vegetarian"],
//     vegan: json["vegan"],
//     glutenFree: json["glutenFree"],
//     dairyFree: json["dairyFree"],
//     veryHealthy: json["veryHealthy"],
//     cheap: json["cheap"],
//     veryPopular: json["veryPopular"],
//     sustainable: json["sustainable"],
//     lowFodmap: json["lowFodmap"],
//     weightWatcherSmartPoints: json["weightWatcherSmartPoints"],
//     gaps: json["gaps"],
//     preparationMinutes: json["preparationMinutes"],
//     cookingMinutes: json["cookingMinutes"],
//     aggregateLikes: json["aggregateLikes"],
//     healthScore: json["healthScore"],
//     creditsText: json["creditsText"],
//     license: json["license"],
//     sourceName: json["sourceName"],
//     pricePerServing: json["pricePerServing"]?.toDouble(),
//     extendedIngredients: List<ExtendedIngredient>.from(json["extendedIngredients"].map((x) => ExtendedIngredient.fromJson(x))),
//     id: json["id"],
//     title: json["title"],
//     readyInMinutes: json["readyInMinutes"],
//     servings: json["servings"],
//     sourceUrl: json["sourceUrl"],
//     image: json["image"],
//     imageType: json["imageType"],
//     summary: json["summary"],
//     cuisines: List<String>.from(json["cuisines"].map((x) => x)),
//     dishTypes: List<String>.from(json["dishTypes"].map((x) => x)),
//     diets: List<dynamic>.from(json["diets"].map((x) => x)),
//     occasions: List<dynamic>.from(json["occasions"].map((x) => x)),
//     instructions: json["instructions"],
//     analyzedInstructions: List<AnalyzedInstruction>.from(json["analyzedInstructions"].map((x) => AnalyzedInstruction.fromJson(x))),
//     originalId: json["originalId"],
//     spoonacularScore: json["spoonacularScore"]?.toDouble(),
//     spoonacularSourceUrl: json["spoonacularSourceUrl"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "vegetarian": vegetarian,
//     "vegan": vegan,
//     "glutenFree": glutenFree,
//     "dairyFree": dairyFree,
//     "veryHealthy": veryHealthy,
//     "cheap": cheap,
//     "veryPopular": veryPopular,
//     "sustainable": sustainable,
//     "lowFodmap": lowFodmap,
//     "weightWatcherSmartPoints": weightWatcherSmartPoints,
//     "gaps": gaps,
//     "preparationMinutes": preparationMinutes,
//     "cookingMinutes": cookingMinutes,
//     "aggregateLikes": aggregateLikes,
//     "healthScore": healthScore,
//     "creditsText": creditsText,
//     "license": license,
//     "sourceName": sourceName,
//     "pricePerServing": pricePerServing,
//     "extendedIngredients": List<dynamic>.from(extendedIngredients.map((x) => x.toJson())),
//     "id": id,
//     "title": title,
//     "readyInMinutes": readyInMinutes,
//     "servings": servings,
//     "sourceUrl": sourceUrl,
//     "image": image,
//     "imageType": imageType,
//     "summary": summary,
//     "cuisines": List<dynamic>.from(cuisines.map((x) => x)),
//     "dishTypes": List<dynamic>.from(dishTypes.map((x) => x)),
//     "diets": List<dynamic>.from(diets.map((x) => x)),
//     "occasions": List<dynamic>.from(occasions.map((x) => x)),
//     "instructions": instructions,
//     "analyzedInstructions": List<dynamic>.from(analyzedInstructions.map((x) => x.toJson())),
//     "originalId": originalId,
//     "spoonacularScore": spoonacularScore,
//     "spoonacularSourceUrl": spoonacularSourceUrl,
//   };
// }
//
// class AnalyzedInstruction {
//   String name;
//   List<Step> steps;
//
//   AnalyzedInstruction({
//     required this.name,
//     required this.steps,
//   });
//
//   factory AnalyzedInstruction.fromJson(Map<String, dynamic> json) => AnalyzedInstruction(
//     name: json["name"],
//     steps: List<Step>.from(json["steps"].map((x) => Step.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "name": name,
//     "steps": List<dynamic>.from(steps.map((x) => x.toJson())),
//   };
// }
//
// class Step {
//   int number;
//   String step;
//   List<Ent> ingredients;
//   List<Ent> equipment;
//   Length? length;
//
//   Step({
//     required this.number,
//     required this.step,
//     required this.ingredients,
//     required this.equipment,
//     this.length,
//   });
//
//   factory Step.fromJson(Map<String, dynamic> json) => Step(
//     number: json["number"],
//     step: json["step"],
//     ingredients: List<Ent>.from(json["ingredients"].map((x) => Ent.fromJson(x))),
//     equipment: List<Ent>.from(json["equipment"].map((x) => Ent.fromJson(x))),
//     length: json["length"] == null ? null : Length.fromJson(json["length"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "number": number,
//     "step": step,
//     "ingredients": List<dynamic>.from(ingredients.map((x) => x.toJson())),
//     "equipment": List<dynamic>.from(equipment.map((x) => x.toJson())),
//     "length": length?.toJson(),
//   };
// }
//
// class Ent {
//   int id;
//   String name;
//   String localizedName;
//   String image;
//   Length? temperature;
//
//   Ent({
//     required this.id,
//     required this.name,
//     required this.localizedName,
//     required this.image,
//     this.temperature,
//   });
//
//   factory Ent.fromJson(Map<String, dynamic> json) => Ent(
//     id: json["id"],
//     name: json["name"],
//     localizedName: json["localizedName"],
//     image: json["image"],
//     temperature: json["temperature"] == null ? null : Length.fromJson(json["temperature"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//     "localizedName": localizedName,
//     "image": image,
//     "temperature": temperature?.toJson(),
//   };
// }
//
// class Length {
//   int number;
//   String unit;
//
//   Length({
//     required this.number,
//     required this.unit,
//   });
//
//   factory Length.fromJson(Map<String, dynamic> json) => Length(
//     number: json["number"],
//     unit: json["unit"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "number": number,
//     "unit": unit,
//   };
// }
//
// class ExtendedIngredient {
//   int id;
//   String aisle;
//   String image;
//   Consistency consistency;
//   String name;
//   String nameClean;
//   String original;
//   String originalName;
//   double amount;
//   String unit;
//   List<String> meta;
//   Measures measures;
//
//   ExtendedIngredient({
//     required this.id,
//     required this.aisle,
//     required this.image,
//     required this.consistency,
//     required this.name,
//     required this.nameClean,
//     required this.original,
//     required this.originalName,
//     required this.amount,
//     required this.unit,
//     required this.meta,
//     required this.measures,
//   });
//
//   factory ExtendedIngredient.fromJson(Map<String, dynamic> json) => ExtendedIngredient(
//     id: json["id"],
//     aisle: json["aisle"],
//     image: json["image"],
//     consistency: consistencyValues.map[json["consistency"]]!,
//     name: json["name"],
//     nameClean: json["nameClean"],
//     original: json["original"],
//     originalName: json["originalName"],
//     amount: json["amount"]?.toDouble(),
//     unit: json["unit"],
//     meta: List<String>.from(json["meta"].map((x) => x)),
//     measures: Measures.fromJson(json["measures"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "aisle": aisle,
//     "image": image,
//     "consistency": consistencyValues.reverse[consistency],
//     "name": name,
//     "nameClean": nameClean,
//     "original": original,
//     "originalName": originalName,
//     "amount": amount,
//     "unit": unit,
//     "meta": List<dynamic>.from(meta.map((x) => x)),
//     "measures": measures.toJson(),
//   };
// }
//
// enum Consistency {
//   LIQUID,
//   SOLID
// }
//
// final consistencyValues = EnumValues({
//   "LIQUID": Consistency.LIQUID,
//   "SOLID": Consistency.SOLID
// });
//
// class Measures {
//   Metric us;
//   Metric metric;
//
//   Measures({
//     required this.us,
//     required this.metric,
//   });
//
//   factory Measures.fromJson(Map<String, dynamic> json) => Measures(
//     us: Metric.fromJson(json["us"]),
//     metric: Metric.fromJson(json["metric"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "us": us.toJson(),
//     "metric": metric.toJson(),
//   };
// }
//
// class Metric {
//   double amount;
//   String unitShort;
//   String unitLong;
//
//   Metric({
//     required this.amount,
//     required this.unitShort,
//     required this.unitLong,
//   });
//
//   factory Metric.fromJson(Map<String, dynamic> json) => Metric(
//     amount: json["amount"]?.toDouble(),
//     unitShort: json["unitShort"],
//     unitLong: json["unitLong"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "amount": amount,
//     "unitShort": unitShort,
//     "unitLong": unitLong,
//   };
// }
//
// class EnumValues<T> {
//   Map<String, T> map;
//   late Map<T, String> reverseMap;
//
//   EnumValues(this.map);
//
//   Map<T, String> get reverse {
//     reverseMap = map.map((k, v) => MapEntry(v, k));
//     return reverseMap;
//   }
// }
// To parse this JSON data, do
//
//     final adModel = adModelFromJson(jsonString);

import 'dart:convert';

AdModel adModelFromJson(String str) => AdModel.fromJson(json.decode(str));

String adModelToJson(AdModel data) => json.encode(data.toJson());

class AdModel {
  int count;
  List<Recipe> recipes;

  AdModel({
    required this.count,
    required this.recipes,
  });

  factory AdModel.fromJson(Map<String, dynamic> json) => AdModel(
    count: json["count"],
    recipes: List<Recipe>.from(json["recipes"].map((x) => Recipe.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "recipes": List<dynamic>.from(recipes.map((x) => x.toJson())),
  };
}

class Recipe {
  String publisher;
  String title;
  String sourceUrl;
  String recipeId;
  String imageUrl;
  double socialRank;
  String publisherUrl;

  Recipe({
    required this.publisher,
    required this.title,
    required this.sourceUrl,
    required this.recipeId,
    required this.imageUrl,
    required this.socialRank,
    required this.publisherUrl,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) => Recipe(
    publisher: json["publisher"],
    title: json["title"],
    sourceUrl: json["source_url"],
    recipeId: json["recipe_id"],
    imageUrl: json["image_url"],
    socialRank: json["social_rank"]?.toDouble(),
    publisherUrl: json["publisher_url"],
  );

  Map<String, dynamic> toJson() => {
    "publisher": publisher,
    "title": title,
    "source_url": sourceUrl,
    "recipe_id": recipeId,
    "image_url": imageUrl,
    "social_rank": socialRank,
    "publisher_url": publisherUrl,
  };
}
