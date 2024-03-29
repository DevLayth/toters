import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:toters/colors.dart';
import 'package:toters/maryam/order_list.dart';

class order_card extends StatelessWidget {
  final String name;
  final String img;
  final String date;
  final double total;
  final int df;

  final int id;
  const order_card(
      {super.key,
      required this.name,
      required this.img,
      required this.date,
      required this.total,
      required this.id,
      required this.df});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 250,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 15,
            child: CircleAvatar(
              radius: 35.0,
              backgroundImage: AssetImage(
                img,
              ),
            ),
          ),
          Positioned(
              top: 30,
              left: 100,
              child: Text(
                name,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          Positioned(
              top: 55,
              left: 100,
              child: Text(
                "Delivered on :" + date,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45),
              )),
          Positioned(
            top: 25,
            right: 20,
            child: Icon(
              Icons.chevron_right_outlined,
              color: Tcolor,
              size: 35,
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              top: 110,
              child: orders_list(
                order: id,
              )),
          Positioned(
              right: 0,
              left: 30,
              bottom: 30,
              child: Text(
                "Total : IQD " + (total + df).toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ))
        ],
      ),
    );
  }
}
