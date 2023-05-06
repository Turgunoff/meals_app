import 'package:flutter/material.dart';

import '../models/category_model.dart';
import '../models/meal.dart';
import 'categories_screen.dart';
import 'favorites_screen.dart';

class TabsScreen extends StatefulWidget {
  final List<Category> categories;
  final List<Meal> meals;

  const TabsScreen({super.key, required this.categories, required this.meals});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  var _tabIndex = 0;
  List<Map<String, dynamic>> _pages = [];

  void _changeTab(int index) {
    setState(() {
      _tabIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _pages = [
      {
        'page': CategoriesScreen(
            categories: widget.categories, meals: widget.meals),
        'title': "Home",
      },
      {
        'page': const FavoritesScreen(),
        'title': "Favorite",
      }
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_pages[_tabIndex]['title']),
      ),
      body: _pages[_tabIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        onTap: _changeTab,
        currentIndex: _tabIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Sevimli",
          ),
        ],
      ),
    );
  }
}
