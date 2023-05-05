import 'package:flutter/material.dart';
import 'package:meals_app/models/category_model.dart';
import 'package:meals_app/screens/category_meals_screen.dart';

import '../models/meal.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  final List<Meal> meals;
  const CategoryItem({
    super.key,
    required this.category,
    required this.meals,
  });

  void _goToCategoryMealsScreen(BuildContext context) {
    // Navigator.of(context).push(
    //   MaterialPageRoute(
    //       builder: (ctx) => CategoryMealsScreen(categoryName: category.title)),
    // );
    Navigator.of(context).pushNamed(CategoryMealsScreen.routeName, arguments: {
      'categoryTitle': category.title,
      'categoryMeals': meals,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _goToCategoryMealsScreen(context);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                category.imgUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.4),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                category.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
