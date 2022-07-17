import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/widgets/meals_item.dart';

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
              return MealItem(
                id: categoriesMeals[index].id,
                affordability: categoriesMeals[index].affordability,
                duration: categoriesMeals[index].duration,
                imageUrl: categoriesMeals[index].imageUrl,
                title: categoriesMeals[index].title,
                complexity: categoriesMeals[index].complexity,
              );
            }));
  }
}
