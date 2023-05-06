import 'package:flutter/material.dart';

import '../models/category_model.dart';
import '../models/meal.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  final List<Category> categories;
  final List<Meal> meals;
  const CategoriesScreen(
      {required this.categories, required this.meals, super.key});

  @override
  Widget build(BuildContext context) {
    return categories.isNotEmpty
        ? GridView(
            padding: const EdgeInsets.all(15.0),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            children: categories.map((category) {
              final categoryMeals = meals
                  .where((meal) => meal.categoryId == category.id)
                  .toList();
              return CategoryItem(category: category, meals: categoryMeals);
            }).toList(),
          )
        : const Center(
            child: Text("No data"),
          );
  }
}
