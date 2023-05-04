import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals_app/models/category_model.dart';
import 'package:meals_app/screens/category_meals_screen.dart';

import 'screens/categories_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _categoryModel = Categories();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      home: CategoriesScreen(categories: _categoryModel.list),
      routes: {
        '/category-meals': (ctx) => const CategoryMealsScreen(),
      },
    );
  }
}
