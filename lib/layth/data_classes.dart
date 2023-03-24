import 'package:flutter/material.dart';

class Restaurant {
  final int id;
  final String name;
  final String image;
  final String type;
  final String desc;
  final int diliver;
  final double rate;
  final List<MenuItem> menu;

  Restaurant(
      {required this.id,
      required this.name,
      required this.image,
      required this.type,
      required this.menu,
      required this.desc,
      required this.diliver,
      required this.rate});
}

class MenuItem {
  final int id;
  final String name;
  final int price;
  final String img;
  final String desc;

  MenuItem({
    required this.id,
    required this.name,
    required this.price,
    required this.img,
    required this.desc,
  });
}
