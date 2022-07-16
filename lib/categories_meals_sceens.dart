import 'package:flutter/material.dart';

class CategoriesMealsScreen extends StatelessWidget {
  final String categoriesItem;
  final String categoriesId;

  const CategoriesMealsScreen(this.categoriesItem, this.categoriesId);
  @override
  Widget build(BuildContext context) {
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
