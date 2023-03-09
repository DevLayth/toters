import 'package:flutter/material.dart';
import 'package:toters/layth/catg_card.dart';

class catg extends StatelessWidget {
  const catg({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 2, right: 10, left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              catcard(img: "assets/catag/breakfast.png", title: "Breakfast"),
              catcard(img: "assets/catag/drinks.png", title: "Drinks"),
              catcard(img: "assets/catag/food.png", title: "Food"),
              catcard(img: "assets/catag/butler.png", title: "Butler"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, right: 10, left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              catcard(img: "assets/catag/new.png", title: "New"),
              catcard(img: "assets/catag/market.png", title: "Market"),
              catcard(img: "assets/catag/rewards.png", title: "Rewards"),
              catcard(img: "assets/catag/zaincash.jpg", title: "Add Fun..."),
            ],
          ),
        ),
      ],
    );
  }
}
