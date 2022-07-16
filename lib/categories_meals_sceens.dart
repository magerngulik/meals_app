import 'package:flutter/material.dart';

class CategoriesMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Memangil variable yang sudah di masukan ke argument
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final String categoriesItem = routeArgs['title'];
    final String categoriesId = routeArgs['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoriesItem),
      ),
      body: Center(
        child: Text('The Recipes of categories'),
      ),
    );
  }
}
