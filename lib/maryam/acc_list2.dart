import 'package:flutter/material.dart';
import 'package:toters/colors.dart';
import 'package:toters/maryam/acc_card2.dart';
import 'package:toters/maryam/acc_card3.dart';

class acc_list2 extends StatelessWidget {
  const acc_list2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
      child: Container(
        height: 240,
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
                  Text(
                    "Toters Cash ",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.info_outline,
                    color: Tcolor,
                  )
                ],
              ),
              acc_card3(
                text: "Wallet",
                icon: Icons.wallet,
                num: 0,
              ),
              Divider(
                thickness: 1,
                color: Color.fromARGB(129, 197, 192, 192),
                indent: 25,
                endIndent: 25,
              ),
              acc_card2(text: "Add funds", icon: Icons.add),
              Divider(
                thickness: 1,
                color: Color.fromARGB(129, 197, 192, 192),
                indent: 25,
                endIndent: 25,
              ),
              acc_card2(text: "Send funds", icon: Icons.send),
            ],
          ),
        ),
      ),
    );
  }
}
