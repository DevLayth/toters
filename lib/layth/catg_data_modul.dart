import 'package:flutter/material.dart';

class catg {
  final String img;
  final String title;
  final int i;
  const catg({required this.img, required this.title, required this.i});
}

List<catg> catg_data = [
  catg(
    img: "assets/catag/breakfast.png",
    title: "Breakfast",
    i: 0,
  ),
  catg(
    img: "assets/catag/drinks.png",
    title: "Drinks",
    i: 1,
  ),
  catg(
    img: "assets/catag/food.png",
    title: "Food",
    i: 2,
  ),
  catg(
    img: "assets/catag/butler.png",
    title: "Butler",
    i: 3,
  ),
  catg(
    img: "assets/catag/new.png",
    title: "New on Toters",
    i: 4,
  ),
  catg(
    img: "assets/catag/market.png",
    title: "Market",
    i: 5,
  ),
  catg(
    img: "assets/catag/rewards.png",
    title: "Rewards",
    i: 6,
  ),
  catg(
    img: "assets/catag/zaincash.jpg",
    title: "Add Funds",
    i: 7,
  )
];
