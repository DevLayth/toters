import 'package:flutter/material.dart';

class catcard extends StatelessWidget {
  final String img;
  final String title;
  const catcard({super.key, required this.img, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: 70,
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            img,
            height: 50,
            width: 50,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
