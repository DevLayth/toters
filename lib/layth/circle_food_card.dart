import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toters/colors.dart';

class circle_food extends StatelessWidget {
  final String name;
  final String img;
  final String rest;
  final int price;
  const circle_food(
      {super.key,
      required this.name,
      required this.img,
      required this.price,
      required this.rest});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          height: 200,
          width: 150,
          child: Stack(
            children: [
              Positioned(
                top: 10,
                left: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 65,
                  backgroundImage: AssetImage(img),
                ),
              ),
              Positioned(
                  bottom: 35,
                  left: 30,
                  child: Text(
                    name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              Positioned(
                  bottom: 18,
                  left: 30,
                  child: Text(
                    rest,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                  )),
              Positioned(
                  bottom: 0,
                  left: 30,
                  child: Text(
                    "IQD " + price.toString(),
                    style: TextStyle(
                        color: Tcolor,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  )),
            ],
          ),
        )
      ],
    );
  }
}
