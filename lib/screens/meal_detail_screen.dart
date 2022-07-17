import 'dart:html';

import 'package:flutter/material.dart';
import '../dummy_data.dart';

class MealDetailScreens extends StatelessWidget {
  static String routeName = '/meal-detail';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere(((meal) => meal.id == mealId));

    Widget buildSectionTitle(String text) {
      return Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)));
    }

    Widget builtContainer(Widget child) {
      return Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
        height: (MediaQuery.of(context).size.height /
                selectedMeal.ingredients.length) *
            2,
        width: MediaQuery.of(context).size.width * 0.7,
        child: child,
      );
    }

    return Scaffold(
        appBar: AppBar(
          title: Text('The Detail Of ${selectedMeal.title}'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: Image.network(selectedMeal.imageUrl, fit: BoxFit.cover),
              ),
              buildSectionTitle('Ingredients'),
              builtContainer(
                ListView.builder(
                    itemCount: selectedMeal.ingredients.length,
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.amber,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Text(selectedMeal.ingredients[index]),
                        ),
                      );
                    }),
              ),
              buildSectionTitle('Steps'),
              builtContainer(ListView.builder(
                itemCount: selectedMeal.steps.length,
                itemBuilder: (context, index) {
                  return Column(children: [
                    ListTile(
                      leading: CircleAvatar(child: Text('# ${index + 1}')),
                      title: Text(selectedMeal.steps[index]),
                    ),
                    Divider()
                  ]);
                },
              ))
            ],
          ),
        ));
  }
}
