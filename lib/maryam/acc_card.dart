import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:toters/colors.dart';

class acc_card extends StatelessWidget {
  final String text;
  final icon;
  const acc_card({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      child: Stack(
        children: [
          Positioned(
            left: 15,
            child: Container(
              height: 40,
              width: 40,
              color: Colors.black45,
              child: Icon(icon),
            ),
          ),
          Positioned(left: 15, bottom: 0, child: Text(text)),
        ],
      ),
    );
  }
}
