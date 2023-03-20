import 'package:flutter/material.dart';
import 'package:toters/colors.dart';

class order_card_list_with_img extends StatelessWidget {
  final String text;
  final String num;
  final String price;
  final String img;
  const order_card_list_with_img(
      {super.key, required this.text, required this.num, required this.price,required this.img});

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
               img,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 80,
              top: 5,
              child: Text(
                text,
                style: TextStyle(fontSize: 17),
              ),
            ),
            Positioned(
              left: 80,
              top: 30,
              child: Text(
                num,
                style: TextStyle(fontSize: 17, color: Tcolor),
              ),
            ),
            Positioned(
              right: 10,
              top: 5,
              child: Text(
                "IQD " + price,
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
