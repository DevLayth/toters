import 'package:flutter/material.dart';
import 'package:toters/layth/catg_card.dart';

class catg extends StatelessWidget {
  const catg({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            catcard(img: "img", title: "Drinks"),
            catcard(img: "img", title: "Food"),
            catcard(img: "img", title: "Butler")
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, right: 10, left: 10),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              catcard(img: "img", title: "New "),
              catcard(img: "img", title: "New "),
              catcard(img: "img", title: "New "),
              catcard(img: "img", title: "New ")
            ],
          ),
        ),
      ],
    );
  }
}
