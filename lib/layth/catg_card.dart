import 'package:flutter/material.dart';
import 'package:toters/aref/screen2.dart';
import 'package:toters/layth/drinks_screen.dart';
import 'package:toters/maryam/screen1.dart';

class catcard extends StatelessWidget {
  final String img;
  final String title;
  final int i;
  const catcard(
      {super.key, required this.img, required this.title, required this.i});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (i == 0) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => screen1()));
        } else if (i == 1) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Drinks_screen()));
        } /*  else if (i == 2) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => screen2()));
        } else if (i == 3) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => screen2()));
        } else if (i == 4) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => screen2()));
        } else if (i == 5) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => screen2()));
        } else if (i == 6) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => screen2()));
        } else if (i == 7) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => screen2()));
        }*/
      },
      child: Container(
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
      ),
    );
  }
}
