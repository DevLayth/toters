import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toters/colors.dart';

class order_card_list_with_img extends StatelessWidget {
  const order_card_list_with_img({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              height: 60,
              width: 60,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: Image.asset(
                "assets/rest/ofelia.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 80,
              top: 5,
              child: Text(
                "chicken & Rice",
                style: TextStyle(fontSize: 17),
              ),
            ),
            Positioned(
              left: 80,
              top: 30,
              child: Text(
                "1",
                style: TextStyle(fontSize: 17, color: Tcolor),
              ),
            ),
            Positioned(
              right: 10,
              top: 5,
              child: Text(
                "IQD 8000",
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
