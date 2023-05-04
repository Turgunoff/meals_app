class Category {
  final String id;
  final String title;
  final String imgUrl;

  Category({
    required this.id,
    required this.title,
    required this.imgUrl,
  });
}

class Categories {
  final List<Category> _list = [
    Category(id: "id1", title: "Fast 0", imgUrl: 'assets/images/fast_food.jpg'),
    Category(id: "id1", title: "Fast 1", imgUrl: 'assets/images/fast_food.jpg'),
    Category(id: "id1", title: "Fast 2", imgUrl: 'assets/images/fast_food.jpg'),
    Category(id: "id1", title: "Fast 3", imgUrl: 'assets/images/fast_food.jpg'),
    Category(id: "id1", title: "Fast 4", imgUrl: 'assets/images/fast_food.jpg'),
    Category(id: "id1", title: "Fast 5", imgUrl: 'assets/images/fast_food.jpg'),
    Category(id: "id1", title: "Fast 6", imgUrl: 'assets/images/fast_food.jpg'),
    Category(id: "id1", title: "Fast 7", imgUrl: 'assets/images/fast_food.jpg'),
    Category(id: "id1", title: "Fast 8", imgUrl: 'assets/images/fast_food.jpg'),
    Category(id: "id1", title: "Fast 9", imgUrl: 'assets/images/fast_food.jpg'),
    Category(id: "id1", title: "Fast 1", imgUrl: 'assets/images/fast_food.jpg'),
    Category(id: "id1", title: "Fast 2", imgUrl: 'assets/images/fast_food.jpg'),
    Category(id: "id1", title: "Fast 3", imgUrl: 'assets/images/fast_food.jpg'),
    Category(id: "id1", title: "Fast 4", imgUrl: 'assets/images/fast_food.jpg'),
  ];

  List<Category> get list {
    return _list;
  }
}
