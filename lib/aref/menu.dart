class Menu {
  final String title, image;
  final double price;

  Menu({required this.title, required this.image, required this.price});
}

class CategoryMenu {
  final String category;
  final List<Menu> items;

  CategoryMenu({required this.category, required this.items});
}

final List<CategoryMenu> demoCategoryMenus = [
  CategoryMenu(
    category: "Appetizers & salads",
    items: [
      Menu(
        price: 7.4,
        image: "assets/images/f_0.png",
        title: "Cookie Sandwich",
      ),
      Menu(
        price: 9.0,
        image: "assets/images/f_1.png",
        title: "Chow Fun",
      ),
      Menu(
        price: 8.5,
        image: "assets/images/f_2.png",
        title: "Dim SUm",
      ),
      Menu(
        price: 12.4,
        image: "assets/images/f_3.png",
        title: "Cookie Sandwich",
      ),
    ],
  ),
  CategoryMenu(
    category: "Lahm bi ajin",
    items: [
      Menu(
        price: 7.4,
        image: "assets/images/f_4.png",
        title: "Combo Burger",
      ),
      Menu(
        price: 9.0,
        image: "assets/images/f_5.png",
        title: "Combo Sandwich",
      ),
      Menu(
        price: 8.5,
        image: "assets/images/f_2.png",
        title: "Dim SUm",
      ),
      Menu(
        price: 12.4,
        image: "assets/images/f_3.png",
        title: "Oyster Dish",
      ),
    ],
  ),
  CategoryMenu(
    category: "Shawrma",
    items: [
      Menu(
        price: 7.4,
        image: "assets/images/f_0.png",
        title: "Cookie Sandwich",
      ),
      Menu(
        price: 9.0,
        image: "assets/images/f_1.png",
        title: "Chow Fun",
      ),
      Menu(
        price: 8.5,
        image: "assets/images/f_2.png",
        title: "Dim SUm",
      ),
      Menu(
        price: 12.4,
        image: "assets/images/f_3.png",
        title: "Cookie Sandwich",
      ),
    ],
  ),
  CategoryMenu(
    category: "Sandwiches",
    items: [
      Menu(
        price: 7.4,
        image: "assets/images/f_6.png",
        title: "Oyster Dish",
      ),
      Menu(
        price: 9.0,
        image: "assets/images/f_7.png",
        title: "Oyster On Ice",
      ),
      Menu(
        price: 8.5,
        image: "assets/images/f_8.png",
        title: "Fried Rice on Pot",
      ),
    ],
  ),
  CategoryMenu(
    category: "Burger",
    items: [
      Menu(
        price: 8.5,
        image: "assets/images/f_2.png",
        title: "Dim SUm",
      ),
      Menu(
        price: 7.4,
        image: "assets/images/f_0.png",
        title: "Cookie Sandwich",
      ),
      Menu(
        price: 9.0,
        image: "assets/images/f_5.png",
        title: "Combo Sandwich",
      ),
      Menu(
        price: 12.4,
        image: "assets/images/f_3.png",
        title: "Cookie Sandwich",
      ),
      Menu(
        price: 9.0,
        image: "assets/images/f_1.png",
        title: "Chow Fun",
      ),
    ],
  ),
  CategoryMenu(
    category: "Pizza",
    items: [
      Menu(
        price: 9.0,
        image: "assets/images/f_5.png",
        title: "Combo Sandwich",
      ),
      Menu(
        price: 12.4,
        image: "assets/images/f_3.png",
        title: "Cookie Sandwich",
      ),
      Menu(
        price: 8.5,
        image: "assets/images/f_2.png",
        title: "Dim SUm",
      ),
      Menu(
        price: 7.4,
        image: "assets/images/f_6.png",
        title: "Oyster Dish",
      ),
      Menu(
        price: 9.0,
        image: "assets/images/f_7.png",
        title: "Oyster On Ice",
      ),
      Menu(
        price: 8.5,
        image: "assets/images/f_8.png",
        title: "Fried Rice on Pot",
      ),
    ],
  ),
  CategoryMenu(
    category: "Pasta",
    items: [
      Menu(
        price: 7.4,
        image: "assets/images/f_0.png",
        title: "Cookie Sandwich",
      ),
      Menu(
        price: 9.0,
        image: "assets/images/f_1.png",
        title: "Chow Fun",
      ),
      Menu(
        price: 8.5,
        image: "assets/images/f_2.png",
        title: "Dim SUm",
      ),
      Menu(
        price: 12.4,
        image: "assets/images/f_3.png",
        title: "Cookie Sandwich",
      ),
    ],
  ),
  CategoryMenu(
    category: "Westren meals",
    items: [
      Menu(
        price: 7.4,
        image: "assets/images/f_0.png",
        title: "Cookie Sandwich",
      ),
      Menu(
        price: 9.0,
        image: "assets/images/f_1.png",
        title: "Chow Fun",
      ),
      Menu(
        price: 8.5,
        image: "assets/images/f_2.png",
        title: "Dim SUm",
      ),
      Menu(
        price: 12.4,
        image: "assets/images/f_3.png",
        title: "Cookie Sandwich",
      ),
    ],
  ),
  CategoryMenu(
    category: "Eastren meals",
    items: [
      Menu(
        price: 7.4,
        image: "assets/images/f_0.png",
        title: "Cookie Sandwich",
      ),
      Menu(
        price: 9.0,
        image: "assets/images/f_1.png",
        title: "Chow Fun",
      ),
      Menu(
        price: 8.5,
        image: "assets/images/f_2.png",
        title: "Dim SUm",
      ),
      Menu(
        price: 12.4,
        image: "assets/images/f_3.png",
        title: "Cookie Sandwich",
      ),
    ],
  ),
  CategoryMenu(
    category: "Diet meals",
    items: [
      Menu(
        price: 7.4,
        image: "assets/images/f_0.png",
        title: "Cookie Sandwich",
      ),
      Menu(
        price: 9.0,
        image: "assets/images/f_1.png",
        title: "Chow Fun",
      ),
      Menu(
        price: 8.5,
        image: "assets/images/f_2.png",
        title: "Dim SUm",
      ),
      Menu(
        price: 12.4,
        image: "assets/images/f_3.png",
        title: "Cookie Sandwich",
      ),
    ],
  ),
  CategoryMenu(
    category: "Sides",
    items: [
      Menu(
        price: 7.4,
        image: "assets/images/f_0.png",
        title: "Cookie Sandwich",
      ),
      Menu(
        price: 9.0,
        image: "assets/images/f_1.png",
        title: "Chow Fun",
      ),
      Menu(
        price: 8.5,
        image: "assets/images/f_2.png",
        title: "Dim SUm",
      ),
      Menu(
        price: 12.4,
        image: "assets/images/f_3.png",
        title: "Cookie Sandwich",
      ),
    ],
  ),
  CategoryMenu(
    category: "Drinks",
    items: [
      Menu(
        price: 7.4,
        image: "assets/images/f_0.png",
        title: "Cookie Sandwich",
      ),
      Menu(
        price: 9.0,
        image: "assets/images/f_1.png",
        title: "Chow Fun",
      ),
      Menu(
        price: 8.5,
        image: "assets/images/f_2.png",
        title: "Dim SUm",
      ),
      Menu(
        price: 12.4,
        image: "assets/images/f_3.png",
        title: "Cookie Sandwich",
      ),
    ],
  ),
];
