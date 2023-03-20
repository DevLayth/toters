import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toters/colors.dart';
import 'package:toters/layth/circle_food_card.dart';

class picks_week_list extends StatelessWidget {
  const picks_week_list({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Container(
            height: 320,
            color: Colors.white,
            child: Stack(
              children: [
                Positioned(
                  left: 10,
                  child: Text(
                    "Picks of the Week",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 10,
                  child: Container(
                    width: 320,
                    child: Text(
                        "Want a delicious go_to? Try our weekly recommendations, curated by our team."),
                  ),
                ),
                Positioned(
                  right: 20,
                  top: 10,
                  child: Icon(
                    Icons.chevron_right_outlined,
                    color: Tcolor,
                    size: 35,
                  ),
                ),
                Positioned(
                    bottom: 40,
                    child: Container(
                      height: 200,
                      width: 450,
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: [
                          circle_food(),
                          circle_food(),
                          circle_food(),
                          circle_food()
                        ],
                      ),
                    ))
              ],
            )));
  }
}
