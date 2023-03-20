import 'package:flutter/material.dart';
import '../colors.dart';

class order_list_card extends StatelessWidget {
  final int num;
  final String text;
  const order_list_card({super.key, required this.num, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, bottom: 5, top: 5),
      child: Container(
        height: 20,
        child: Stack(
          children: [
            Positioned(
              left: 10,
              child: Text(
                num.toString(),
                style: TextStyle(
                    color: Tcolor, fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              left: 35,
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
