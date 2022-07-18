import 'package:flutter/material.dart';
import 'package:meals_app/widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = "/filters";

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;

  Widget _builtSwithListTile(
      String title, String description, bool currentValue, Function update) {
    return SwitchListTile(
        activeColor: Colors.blue,
        title: Text(title),
        subtitle: Text(description),
        value: currentValue,
        onChanged: update);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          _builtSwithListTile(
              'Glutten-Free', 'Only include gluten-free meals', _glutenFree,
              (newValue) {
            setState(() {
              _glutenFree = newValue;
            });
          }),
          _builtSwithListTile(
              'Lactose-Free', 'Only include Lactose-Free meals', _lactoseFree,
              (newValue) {
            setState(() {
              _lactoseFree = newValue;
            });
          }),
          _builtSwithListTile(
              'Vegetarian', 'Only include vegetarian meals', _vegetarian,
              (newValue) {
            setState(() {
              _vegetarian = newValue;
            });
          }),
          _builtSwithListTile(
              'Vegan', 'Only include Lactose-Free meals', _vegan, (newValue) {
            setState(() {
              _vegan = newValue;
            });
          }),
        ],
      ),
    );
  }
}
