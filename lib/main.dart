import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals_app/screens/meal_details_screen.dart';
import 'package:meals_app/screens/tabs_screen.dart';

import 'models/category_model.dart';
import 'models/meal.dart';
import 'screens/category_meals_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _categoryModel = Categories();

  final _mealModel = Meals();

  void _toggleLike(String mealId) {
    setState(() {
      _mealModel.toggleLike(mealId);
    });
  }

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
        CategoryMealsScreen.routeName: (ctx) =>
            CategoryMealsScreen(toggleLike: _toggleLike),
        MealDetailsScreen.routeName: (ctx) => const MealDetailsScreen(),
      },
    );
  }
}
