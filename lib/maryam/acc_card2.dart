import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toters/colors.dart';

class acc_card2 extends StatelessWidget {
  final String text;
  final icon;
  const acc_card2({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            height: 36,
            color: Colors.white,
          ),
          Positioned(
              left: 5,
              top: 10,
              child: Icon(
                icon,
                size: 30,
                color: Colors.black45,
              )),
          Positioned(
              left: 45,
              top: 15,
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              )),
        ],
      ),
    );
  }
}
