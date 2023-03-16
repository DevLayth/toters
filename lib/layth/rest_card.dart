import 'package:flutter/material.dart';
import 'package:toters/colors.dart';
import 'package:toters/layth/rest_data.dart';

class rest_card extends StatelessWidget {
  final String img;
  final String name;
  final String desc;
  final String diliver;
  const rest_card(
      {super.key,
      required this.img,
      required this.name,
      required this.desc,
      required this.diliver});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 225,
          width: 370,
          color: Colors.white,
        ),
        Container(
          height: 180,
          width: 370,
          child: Image.asset(
            img,
            fit: BoxFit.fill,
          ),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              color: Tcolor, borderRadius: BorderRadius.circular(10)),
        ),
        Positioned(
          right: 10,
          top: 10,
          child: Icon(
            Icons.favorite_border_outlined,
            size: 35,
            color: Colors.white,
          ),
        ),
        Positioned(
          bottom: 30,
          right: 15,
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
            right: 30,
            bottom: 55,
            child: Text(
              diliver,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            )),
        Positioned(right: 42, bottom: 40, child: Text("mins")),
        Positioned(
            bottom: 20,
            child: Text(name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))),
        Positioned(bottom: 0, child: Text(desc, style: TextStyle(fontSize: 15)))
      ],
    );
  }
}
