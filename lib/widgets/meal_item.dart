import 'package:flutter/material.dart';
import 'package:meals_app/screens/meal_details_screen.dart';

import '../models/meal.dart';

class MealItem extends StatelessWidget {
  final Meal meal;
  final Function toggleLike;

  const MealItem({
    super.key,
    required this.meal,
    required this.toggleLike,
  });

  void _goToMealDetails(BuildContext context) {
    Navigator.of(context)
        .pushNamed(MealDetailsScreen.routeName, arguments: meal);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _goToMealDetails(context),
      child: Card(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                      width: double.infinity,
                      height: 300,
                      child: Image.asset(meal.imgUrls[0], fit: BoxFit.cover)),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 200,
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.all(10.0),
                      color: Colors.black.withOpacity(0.5),
                      child: Text(
                        meal.title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () => toggleLike(meal.id),
                      icon: Icon(
                        meal.isLike ? Icons.favorite : Icons.favorite_outline,
                        color: Colors.black54,
                      ),
                    ),
                    Text("${meal.preparingTime} minuts"),
                    Text("\$${meal.price}"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
