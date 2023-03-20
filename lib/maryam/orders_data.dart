class order {
  String name;
  String img;
  String date;
  double total;
  int df;
  List<orders> ordrs;

  order(
      {required this.name,
      required this.img,
      required this.date,
      required this.df,
      required this.total,
      required this.ordrs});
}

List<order> orderlist = [
  order(
    name: "ofelia",
    img: "assets/rest/ofelia.png",
    date: "date 000000",
    df: 2000,
    total: 5000,
    ordrs: [
      orders(
          num: 1, text: "Chicken", price: 25000, img: "assets/rest/ofelia.png"),
      orders(num: 1, text: "Rizo", price: 8000, img: "assets/rest/ofelia.png"),
    ],
  ),
  order(
    name: "BurgerBox",
    img: "assets/rest/ofelia.png",
    date: " 111100",
    df: 3000,
    total: 6500,
    ordrs: [
      orders(
          num: 1, text: "Chicken", price: 7000, img: "assets/rest/ofelia.png"),
      orders(
          num: 2, text: "Burger", price: 35000, img: "assets/rest/ofelia.png"),
    ],
  )
];

class orders {
  String text;
  int num;
  int price;
  String img;

  orders(
      {required this.num,
      required this.text,
      required this.price,
      required this.img});
}
