import 'package:flutter/material.dart';
import 'package:toters/maryam/acc_card2.dart';
import 'package:toters/maryam/acc_card3.dart';

class acc_list3 extends StatelessWidget {
  const acc_list3({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
      child: Container(
        height: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Positioned(
                      left: 20,
                      child: Text(
                        "Promotions ",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
              acc_card3(
                text: "Credits",
                icon: Icons.percent_rounded,
                num: 4000,
              ),
              Divider(
                thickness: 1,
                color: Color.fromARGB(129, 197, 192, 192),
                indent: 25,
                endIndent: 25,
              ),
              acc_card2(text: "Add Promo Code", icon: Icons.sell)
            ],
          ),
        ),
      ),
    );
  }
}
