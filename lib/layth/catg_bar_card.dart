import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class catg_bar_card extends StatelessWidget {
  final String img;
  final String txt;
  const catg_bar_card({super.key, required this.img, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset(
                img,
                height: 50,
                width: 50,
              ),
              Text(txt)
            ],
          ),
        ],
      ),
    );
  }
}
