import 'package:flutter/material.dart';

class catg_bar_data {
  final String img;
  final String txt;

  catg_bar_data({required this.img, required this.txt});
}

List<catg_bar_data> bar_data = [
  catg_bar_data(img: "assets/catag/breakfast.png", txt: "breakfast"),
  catg_bar_data(img: "assets/catag/food.png", txt: "burgers"),
  catg_bar_data(img: "assets/catag/pizza.png", txt: "Pizza"),
  catg_bar_data(img: "assets/catag/drinks.png", txt: "Coffee"),
  catg_bar_data(img: "assets/catag/fast_food.png", txt: "Fast Food"),
  catg_bar_data(img: "assets/catag/chicken.png", txt: "Chicken"),
  catg_bar_data(img: "assets/catag/ice_cream.png", txt: "Ice Cream"),
  catg_bar_data(img: "assets/catag/juices.png", txt: "Juices"),
];
