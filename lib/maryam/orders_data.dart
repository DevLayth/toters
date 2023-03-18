class order {
  String name;
  String img;
  String date;
  double total;
  List<orders> ordrs;

  order(
      {required this.name,
      required this.img,
      required this.date,
      required this.total,
      required this.ordrs});
}

List<order> orderlist = [
  order(
    name: "ofelia",
    img: "assets/rest/ofelia.png",
    date: "date 000000",
    total: 5000,
    ordrs: [
      orders(num: 1, text: "Chicken"),
      orders(num: 1, text: "Rizo"),
    ],
  ),
  order(
    name: "BurgerBox",
    img: "assets/rest/ofelia.png",
    date: " 111100",
    total: 6500,
    ordrs: [
      orders(num: 1, text: "Chicken"),
      orders(num: 2, text: "Burger"),
      orders(num: 3, text: "falafel"),
    ],
  )
];

class orders {
  String text;
  int num;

  orders({required this.num, required this.text});
}
