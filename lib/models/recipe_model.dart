class Recipe {
  String? docId;
  String? title;
  String? description;
  String? nutritionfacts;
  String? preptime;
  String? servings;
  Map? ingredients;

  Recipe();

  Recipe.fromJson(Map<String, dynamic> data, [String? id]) {
    docId = id;
    title = data['title'];
    description = data['description'];
    nutritionfacts = data['nutritionfacts'];
    preptime = data['preptime'];
    servings = data['servings'];
    ingredients = data['ingredients'];
  }

  Map<String, dynamic> toJson() {
    return {
      "title": title,
      "description": description,
      "nutritionfacts": nutritionfacts,
      "preptime": preptime,
      "servings": servings,
      "ingredients": ingredients,
    };
  }
}
