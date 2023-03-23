import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toters/colors.dart';

class resturant_card extends StatelessWidget {
  final String pic;
  const resturant_card({super.key, required this.pic});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          pic,
          fit: BoxFit.fitWidth,
        ),
        Positioned(bottom: 0, child: Text("data"))
      ],
    );
  }
}
