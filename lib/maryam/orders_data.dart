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
    name: "Burger Box",
    img: "assets/orders/b_box.jpg",
    date: "12:2:45 Feb,2 23",
    df: 2000,
    total: 18000,
    ordrs: [
      orders(
          num: 2,
          text: "Burger Double",
          price: 6500,
          img: "assets/orders/double_b.png"),
      orders(
          num: 1,
          text: "Chicken Burger",
          price: 5000,
          img: "assets/orders/b_burger.jpg"),
    ],
  ),
  order(
    name: "Organic Jucies",
    img: "assets/orders/organic.jpg",
    date: "22:11:02 Feb,11 23",
    df: 1000,
    total: 9000,
    ordrs: [
      orders(
          num: 2,
          text: "Morocco",
          price: 2000,
          img: "assets/orders/morocco.jpg"),
      orders(
          num: 2, text: "Swiss", price: 2500, img: "assets/orders/swiss.jpg"),
    ],
  ),
  order(
    name: "TCHE TCHE",
    img: "assets/orders/tche.JPG",
    date: "18:31:02 jan,11 23",
    df: 1500,
    total: 6000,
    ordrs: [
      orders(num: 1, text: "Diet", price: 6000, img: "assets/orders/diet.jpg"),
    ],
  )
];

/*


 */
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
