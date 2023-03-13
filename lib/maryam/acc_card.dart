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
      height: 85,
      width: 65,
      child: Stack(
        children: [
          Positioned(
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Color.fromARGB(115, 214, 212, 212),
                  borderRadius: BorderRadius.circular(15)),
              child: Icon(
                icon,
                size: 30,
                color: Colors.black45,
              ),
            ),
          ),
          Positioned(
              right: 0,
              left: 2,
              bottom: 0,
              child: Text(
                text,
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}
