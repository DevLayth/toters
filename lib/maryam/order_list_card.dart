import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

import '../colors.dart';

class order_list_card extends StatelessWidget {
  const order_list_card({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 20,
        child: Stack(
          children: [
            Positioned(
              left: 10,
              child: Text(
                "1",
                style: TextStyle(
                    color: Tcolor, fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              left: 35,
              child: Text(
                "chicken Shawarma & Rice",
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
