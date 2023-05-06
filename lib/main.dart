import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals_app/screens/meal_details_screen.dart';
import 'package:meals_app/screens/tabs_screen.dart';

import 'models/category_model.dart';
import 'models/meal.dart';
import 'screens/category_meals_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _categoryModel = Categories();
  final _mealModel = Meals();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(
              categories: _categoryModel.list,
              meals: _mealModel.list,
            ),
        CategoryMealsScreen.routeName: (ctx) => const CategoryMealsScreen(),
        MealDetailsScreen.routeName: (ctx) => const MealDetailsScreen(),
      },
    );
  }
}
