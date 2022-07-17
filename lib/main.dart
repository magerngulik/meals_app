import 'package:flutter/material.dart';
import 'package:meals_app/screens/meal_detail_screen.dart';
import 'package:meals_app/screens/tabs_screen.dart';
import './screens/categories_screens.dart';
import './screens//categories_meals_sceens.dart';
import './screens/meal_detail_screen.dart';

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
      // home: CategoriesScreen(), kalau menambahkan '/' dalam route maka akan membaca '/' sebagai route awal
      routes: {
        '/': (context) => TabsScreen(),
        CategoriesMealsScreen.routeName: (context) => CategoriesMealsScreen(),
        MealDetailScreens.routeName: (context) => MealDetailScreens(),
        // TabsScreen.routeName: (context) => TabsScreen(),
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
        // if (setting.name =='/meal-detail') {
        //   return ...;
        // }else if(setting.name =='/somthing-else'){
        //   return ...;
        // }
        // return MaterialPageRoute(builder: ((context) => CategoriesMealsScreen()));
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: ((context) => CategoriesScreen()));
      },
    );
  }
}
