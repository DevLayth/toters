import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toters/colors.dart';

class resturant_card extends StatelessWidget {
  final String pic;
  final String name;
  final String desc;
  const resturant_card(
      {super.key, required this.pic, required this.desc, required this.name});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 450,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        Positioned(
          top: 0,
          child: Image.asset(
            pic,
            height: 300,
            width: 500,
            fit: BoxFit.fitWidth,
          ),
        ),
        Positioned(
            bottom: 110,
            left: 20,
            child: Text(
              name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            )),
        Positioned(
            bottom: 80,
            left: 20,
            child: Text(
              desc,
              style: TextStyle(fontSize: 18, color: Colors.grey),
            )),
        Positioned(
          top: 20,
          left: 20,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
        ),
        Positioned(
          top: 20,
          right: 120,
          child: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.favorite,
              color: Color.fromARGB(255, 117, 1, 1),
            ),
          ),
        ),
        Positioned(
          top: 20,
          right: 70,
          child: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.share,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
        Positioned(
          top: 20,
          right: 20,
          child: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.search,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
        Positioned(
            bottom: 0,
            left: 10,
            child: Text(
              "Menu",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
