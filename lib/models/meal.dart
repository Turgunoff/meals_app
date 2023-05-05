class Meal {
  final String id;
  final String title;
  final String imgUrl;
  final String description;
  final String categoryId;
  final int preparingTime;
  final double price;
  bool isLike;
  final List<String> ingredients;

  Meal({
    required this.id,
    required this.title,
    required this.imgUrl,
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
      imgUrl: 'assets/images/fast_food.jpg',
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
      imgUrl: 'assets/images/fast_food.jpg',
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
      imgUrl: 'assets/images/fast_food.jpg',
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
