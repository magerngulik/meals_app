import 'package:flutter/material.dart';
import 'package:meals_app/models/category.dart';
import './dummy_data.dart';
import 'categories_items.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('DeliMeals')),
        body: GridView(
          padding: EdgeInsets.all(20),
          children: DUMMY_CATEGORIES
              .map(
                (catData) => CategoriesItems(
                  id: catData.id,
                  title: catData.title,
                  color: catData.color,
                ),
              )
              .toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        ));
  }
}
