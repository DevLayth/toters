import 'package:flutter/material.dart';
import 'package:toters/colors.dart';

class green_pts_card extends StatelessWidget {
  const green_pts_card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: 25,
            child: Container(
              height: 60,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ]),
            ),
          ),
          Positioned(
            top: 30,
            left: 90,
            child: Text(
              "Green",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
              top: 50,
              left: 90,
              child: Text(
                "0 pts",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold),
              )),
          Positioned(
            top: 25,
            left: 40,
            child: Icon(
              Icons.star_purple500,
              size: 40,
              color: Tcolor,
            ),
          ),
          Positioned(
              top: 37,
              left: 240,
              child: Icon(
                Icons.arrow_forward_ios,
                color: Tcolor,
              ))
        ],
      ),
    );
  }
}
