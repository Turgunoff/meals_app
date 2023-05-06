import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealDetailsScreen extends StatefulWidget {
  const MealDetailsScreen({super.key});

  static const routeName = '/meal-dateils';

  @override
  State<MealDetailsScreen> createState() => _MealDetailsScreenState();
}

class _MealDetailsScreenState extends State<MealDetailsScreen> {
  int activeImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)!.settings.arguments as Meal;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(meal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 250.0,
                viewportFraction: 1,
                autoPlay: true,
                initialPage: activeImageIndex,
                onPageChanged: (index, reason) {
                  setState(() {
                    activeImageIndex = index;
                  });
                },
              ),
              items: meal.imgUrls.map((image) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(image, fit: BoxFit.cover),
                );
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: meal.imgUrls.map((image) {
                final imageIndex = meal.imgUrls.indexOf(image);
                return Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 5.0),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: activeImageIndex == imageIndex
                        ? Colors.blue
                        : Colors.grey,
                    shape: BoxShape.circle,
                  ),
                );
              }).toList(),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "\$${meal.price}",
              style: const TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Ta'rifi",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(meal.description)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 250,
              child: Card(
                margin: const EdgeInsets.all(16.0),
                child: ListView.separated(
                  padding: const EdgeInsets.all(8.0),
                  itemBuilder: (ctx, index) {
                    return Text(meal.ingredients[index]);
                  },
                  separatorBuilder: (ctx, index) {
                    return const Divider();
                  },
                  itemCount: meal.ingredients.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
