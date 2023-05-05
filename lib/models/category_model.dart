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
    Category(
        id: "id1", title: "Fast Food", imgUrl: 'assets/images/fast_food.jpg'),
    Category(id: "id2", title: "Milliy", imgUrl: 'assets/images/fast_food.jpg'),
    Category(
        id: "id3", title: "Fransuz", imgUrl: 'assets/images/fast_food.jpg'),
    Category(
        id: "id4", title: "Ichimliklar", imgUrl: 'assets/images/fast_food.jpg'),
    Category(
        id: "id5", title: "Mevalar", imgUrl: 'assets/images/fast_food.jpg'),
  ];

  List<Category> get list {
    return _list;
  }
}
