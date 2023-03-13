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
  const rest_data_m(
      {required this.id,
      this.name,
      this.desc,
      this.dliver,
      this.img,
      this.rate,
      this.type,
      this.rest_menu});
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
      name: "Texas - Duhok",
      type: "Fast Food",
      desc: "\$\$\$. Fast Food",
      dliver: "18-30",
      img: "assets/rest/texas.png",
      rate: 4.5,
      rest_menu: <menu>[
        menu(
          name: "Krispy",
          price: 5000,
          img: "assets/rest/texas.png",
        )
      ]),
  rest_data_m(
    id: 2,
    name: "Tandori",
    type: "Fast Food",
    desc: "\$\$. Fast Food",
    dliver: "20-45",
    img: "assets/rest/texas.png",
    rate: 3.8,
  ),
  rest_data_m(
    id: 3,
    name: "Shagaf - Duhok",
    type: "Drinks",
    desc: "\$. Coffee",
    dliver: "15-25",
    img: "assets/rest/texas.png",
    rate: 4.7,
  ),
  rest_data_m(
    id: 4,
    name: "Organic joice - Duhok",
    type: "Drinks",
    desc: "\$. Joice",
    dliver: "10-25",
    img: "assets/rest/texas.png",
    rate: 4.7,
  ),
];
