class Meal {
  final String id;
  final String title;
  final List<String> imgUrls;
  final String description;
  final String categoryId;
  final int preparingTime;
  final double price;
  bool isLike;
  final List<String> ingredients;

  Meal({
    required this.id,
    required this.title,
    required this.imgUrls,
    required this.description,
    required this.categoryId,
    required this.preparingTime,
    required this.price,
    this.isLike = false,
    required this.ingredients,
  });
}

class Meals {
  final List<Meal> _list = [
    Meal(
      id: "id1",
      title: 'Lavash',
      imgUrls: [
        'assets/images/fast_food.jpg',
        'assets/images/lavash.jpg',
        'assets/images/twister.jpg',
      ],
      description: 'Ajoyib',
      categoryId: 'id1',
      preparingTime: 10,
      price: 25000,
      ingredients: [
        "go'sht",
      ],
    ),
    Meal(
      id: "id2",
      title: 'Lavash',
      imgUrls: [
        'assets/images/fast_food.jpg',
        'assets/images/lavash.jpg',
        'assets/images/twister.jpg',
      ],
      description: 'Ajoyib',
      categoryId: 'id1',
      preparingTime: 10,
      price: 25000,
      ingredients: [
        "go'sht",
      ],
    ),
    Meal(
      id: "id2",
      title: 'Gamburger',
      imgUrls: [
        'assets/images/fast_food.jpg',
        'assets/images/lavash.jpg',
        'assets/images/twister.jpg',
      ],
      description: 'Ajoyib 2',
      categoryId: 'id2',
      preparingTime: 15,
      price: 30000,
      ingredients: [
        "go'sht",
        "xamir",
        "tosh",
        "suv",
        "go'sht",
        "xamir",
        "tosh",
        "suv",
        "go'sht",
        "xamir",
        "tosh",
        "suv",
        "go'sht",
        "xamir",
        "tosh",
        "suv",
      ],
    ),
  ];
  List<Meal> get list {
    return _list;
  }
}
