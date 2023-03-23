import 'package:flutter/material.dart';
import 'package:toters/aref/screen2.dart';
import 'package:toters/colors.dart';

class rest_card extends StatelessWidget {
  final String img;
  final String name;
  final String desc;
  final String diliver;
  final double rate;
  final int id;
  const rest_card(
      {super.key,
      required this.img,
      required this.name,
      required this.desc,
      required this.diliver,
      required this.rate,
      required this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Foodpage(
                      id: id,
                    )));
      },
      child: Stack(
        children: [
          Container(
            height: 260,
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
            right: 15,
            top: 10,
            child: Icon(
              Icons.favorite_border_outlined,
              size: 35,
              color: Colors.white,
            ),
          ),
          Positioned(
            bottom: 50,
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
              bottom: 70,
              child: Text(
                diliver,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )),
          Positioned(right: 42, bottom: 55, child: Text("mins")),
          Positioned(
              left: 5,
              bottom: 48,
              child: Text(name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))),
          Positioned(
              bottom: 30,
              left: 5,
              child: Text(desc, style: TextStyle(fontSize: 13))),
          Positioned(
            bottom: 0,
            left: 5,
            child: Container(
              height: 25,
              width: 60,
              decoration: BoxDecoration(
                  color: Color.fromARGB(20, 0, 0, 0),
                  borderRadius: BorderRadius.circular(7)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.star,
                    color: Tcolor,
                    size: 20,
                  ),
                  Text(
                    rate.toString(),
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 14),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 80,
            child: Container(
              height: 25,
              width: 120,
              decoration: BoxDecoration(
                  color: Color.fromARGB(57, 77, 113, 230),
                  borderRadius: BorderRadius.circular(7)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.add_circle_outline,
                    color: Colors.blue,
                    size: 20,
                  ),
                  Text(
                    "Earn Points",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
