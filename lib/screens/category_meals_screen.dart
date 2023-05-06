import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  final Function toggleLike;

  const CategoryMealsScreen({required this.toggleLike, super.key});

  @override
  Widget build(BuildContext context) {
    final categoryData =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final title = categoryData['categoryTitle'];
    final meals = categoryData['categoryMeals'] as List<Meal>;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: meals.isNotEmpty
          ? ListView.builder(
              padding: const EdgeInsets.all(10),
              itemBuilder: (ctx, index) => MealItem(
                meal: meals[index],
                toggleLike: toggleLike,
              ),
              itemCount: meals.length,
            )
          : const Center(
              child: Text('Hozirda maxsulot mavjud emas'),
            ),
    );
  }
}
