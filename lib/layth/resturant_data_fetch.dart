import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'data_classes.dart';

Future<List<Restaurant>> fetchRestaurants() async {
  final jsonString = await rootBundle.loadString('assets/restaurants.json');

  final List<dynamic> jsonList = json.decode(jsonString);

  List<Restaurant> restaurants = jsonList.map((json) {
    final List<dynamic> menuList = json['rmenu'];
    List<MenuItem> menu = menuList.map((menuJson) {
      return MenuItem(
        id: menuJson['fid'],
        name: menuJson['fname'],
        price: menuJson['fprice'],
      );
    }).toList();

    return Restaurant(
      id: json['rid'],
      name: json['rname'],
      image: json['rimg'],
      type: json['rtype'],
      desc: json['rdesc'],
      diliver: json['rdliver'],
      rate: json['rate'],
      menu: menu,
    );
  }).toList();

  return restaurants;
}
