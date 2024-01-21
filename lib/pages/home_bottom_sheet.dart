import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/models/recipe_model.dart';
import 'package:recipe_app/provider/recipe_provider.dart';

class HomeBottomSheet extends StatefulWidget {
  // final String title;
  // final String description;
  // final String caloriesText;
  // final String timeText;
  // final String servingText;
  // final String ingredients;

  const HomeBottomSheet({
    super.key,
    // required this.title, required this.description,
    // required this.caloriesText, required this.timeText, required this.servingText, required this.ingredients
  });

  @override
  State<HomeBottomSheet> createState() => _HomeBottomSheetState();
}

class _HomeBottomSheetState extends State<HomeBottomSheet> {
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('Recipes').snapshots();
  Recipe myInstance = Recipe();

  @override
  void initState() {
    init();
    super.initState();
  }

  void init() async {
    await Provider.of<RecipeProvider>(context, listen: false).getRecipes();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: StreamBuilder<QuerySnapshot>(
        stream: _usersStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading");
          }

          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              // Map<String, dynamic> data =
              //     document.data()! as Map<String, dynamic>;
              var data = document.data()! as Map<String, dynamic>;
              return Padding(
                padding: const EdgeInsets.only(top: 50, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Title",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      data['title'],
                      style: TextStyle(fontSize: 17),
                    ),
                    Text("Description",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    Text(data['description'], style: TextStyle(fontSize: 17)),
                    Text("Prep Time",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    Text(data['preptime'], style: TextStyle(fontSize: 17)),
                    Text("Servings",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    Text(data['servings'], style: TextStyle(fontSize: 17)),
                    Text("Nutrition Facts",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    Text(
                      data['nutritionfacts'].toString(),
                      style: TextStyle(fontSize: 17),
                    ),
                    Text("Ingredients",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    Text(
                      data['ingredients'].toString(),
                      style: TextStyle(fontSize: 17),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
  // return SingleChildScrollView(
  //     child: Container(
  //   height: 600,
  //   color: Colors.white,
  //   child: Padding(
  //     padding: const EdgeInsets.all(8.0),
  //     child: Consumer<RecipeProvider>(
  //       builder: (context, recipeProvider, _) =>
  //           recipeProvider.recipeList == null
  //               ? CircularProgressIndicator()
  //               : (recipeProvider.recipeList?.isEmpty ?? false)
  //                   ? Text("No Data Found")
  //                   : ListView.builder(
  //                       itemCount: recipeProvider.recipeList?.length,
  //                       itemBuilder: (context, index) {
  //                         var data = recipeProvider.recipeList?[index];
  //                         return ListTile(
  //                           title: Text("title"),
  //                           // Add other widgets as needed
  //                         );
  //                       }),
  //     ),
  //   ),
  // ));
}
