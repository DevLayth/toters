import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toters/colors.dart';

class rest_card extends StatelessWidget {
  const rest_card({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 225,
          width: 300,
          color: Colors.white,
        ),
        Container(
          height: 170,
          width: 300,
          child: Image.asset(
            "assets/rest/texas.png",
            fit: BoxFit.fill,
          ),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              color: Tcolor, borderRadius: BorderRadius.circular(10)),
        ),
        Positioned(
          right: 120,
          top: 10,
          child: Icon(
            Icons.favorite_border_outlined,
            size: 35,
            color: Colors.white,
          ),
        ),
        Positioned(
          bottom: 50,
          right: 130,
          child: Container(
            width: 90,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 2,
                  offset: Offset(0, 3),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            right: 152,
            bottom: 75,
            child: Text(
              "18-28",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            )),
        Positioned(right: 160, bottom: 60, child: Text("mins")),
        Positioned(
            bottom: 30,
            child: Text("Texas Cicken - Duhok",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))),
        Positioned(
            bottom: 10,
            child: Text("\$\$\$ . Fast Food, Chicken",
                style: TextStyle(fontSize: 15)))
      ],
    );
  }
}
