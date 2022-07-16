import 'package:flutter/material.dart';
import './dummy_data.dart';
import './models/meal.dart';

class CategoriesMealsScreen extends StatelessWidget {
  static const routeName = "/categories-meals";
  @override
  Widget build(BuildContext context) {
    //Memangil variable yang sudah di masukan ke argument
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final String categoriesItem = routeArgs['title'];
    final String categoriesId = routeArgs['id'];
    final List<Meal> categoriesMeals = DUMMY_MEALS.where((meals) {
      return meals.categories.contains(categoriesId);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(categoriesItem),
        ),
        body: ListView.builder(
            itemCount: categoriesMeals.length,
            itemBuilder: (ctx, index) {
              return Text(categoriesMeals[index].title);
            }));
  }
}
