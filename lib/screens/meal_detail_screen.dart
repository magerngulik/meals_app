import 'package:flutter/material.dart';

class MealDetailScreens extends StatelessWidget {
  static String routeName = '/meal-detail';
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
        appBar: AppBar(
          title: Text('The Detail Of $mealId'),
        ),
        body: Center(child: Text("The Detail Recepies of $mealId")));
  }
}
