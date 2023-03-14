class Restaurant {
  final String id;
  final String name;
  final String image;
  final String type;
  final String desc;
  final String diliver;
  final List<MenuItem> menu;

  Restaurant(
      {required this.id,
      required this.name,
      required this.image,
      required this.type,
      required this.menu,
      required this.desc,
      required this.diliver});
}

class MenuItem {
  final String id;
  final String name;
  final String price;

  MenuItem({
    required this.id,
    required this.name,
    required this.price,
  });
}