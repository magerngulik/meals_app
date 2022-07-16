import 'package:flutter/material.dart';
import './categories_screens.dart';
import './categories_meals_sceens.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DeliMeals',
      theme: ThemeData(
        fontFamily: 'Raleway',
        primarySwatch: Colors.pink,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
      ),
      home: CategoriesScreen(),
      routes: {'/categories': (context) => CategoriesMealsScreen()},
    );
  }
}
