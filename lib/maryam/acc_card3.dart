import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toters/colors.dart';

class acc_card3 extends StatelessWidget {
  final String text;
  final icon;
  final int num;
  const acc_card3(
      {super.key, required this.text, required this.icon, required this.num});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            height: 55,
            color: Colors.white,
          ),
          Positioned(
              left: 20,
              top: 10,
              child: Icon(
                icon,
                size: 30,
                color: Colors.black45,
              )),
          Positioned(
              left: 65,
              top: 15,
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              )),
          Positioned(
              right: 20,
              top: 15,
              child: Text(
                "IQD " + num.toString(),
                style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.bold, color: Tcolor),
              ))
        ],
      ),
    );
  }
}
