import 'dart:convert';
import 'dart:ffi';

class rest_data_m {
  final String? name;
  final String? type;
  final String? desc;
  final String? dliver;
  final String? img;
  final double? rate;
  final List? rest_menu;
  final int id;
  final int? li;
  const rest_data_m(
      {required this.id,
      this.name,
      this.desc,
      this.dliver,
      this.img,
      this.rate,
      this.type,
      this.rest_menu,
      this.li});
}

class menu {
  final String? name;
  final double? price;
  final String? img;

  const menu({this.name, this.price, this.img});
}

List<rest_data_m> r_data = [
  rest_data_m(
      id: 1,
      name: "Ofelia",
      type: "Food",
      desc: "\$\$\$. Food",
      dliver: "18-30",
      img: "assets/rest/ofelia.png",
      rate: 3.5,
      li: 1,
      rest_menu: <menu>[
        menu(
          name: "Krispy",
          price: 5000,
          img: "assets/rest/texas.png",
        )
      ]),
  rest_data_m(
    id: 2,
    name: "Texas - Duhok",
    type: "Fast Food",
    desc: "\$\$. Fast Food",
    dliver: "20-45",
    img: "assets/rest/texas.png",
    rate: 3.1,
    li: 1,
  ),
  rest_data_m(
    id: 3,
    name: "Shagaf - Duhok",
    type: "Drinks",
    desc: "\$. Coffee",
    dliver: "15-25",
    img: "assets/rest/shaghaf.jpg",
    rate: 4.7,
    li: 2,
  ),
  rest_data_m(
    id: 4,
    name: "Organic joice - Duhok",
    type: "Drinks",
    desc: "\$. Joice",
    dliver: "10-25",
    img: "assets/rest/organic.jpg",
    rate: 4.5,
    li: 2,
  ),
  rest_data_m(
    id: 5,
    name: "Eat&Go - Duhok",
    type: "Fast Food",
    desc: "\$\$. Fast Food",
    dliver: "10-25",
    img: "assets/rest/eat_go.jpg",
    rate: 4.9,
    li: 2,
  ),
];
