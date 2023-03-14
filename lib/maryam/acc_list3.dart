import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toters/maryam/acc_card2.dart';
import 'package:toters/maryam/acc_card3.dart';

class acc_list3 extends StatelessWidget {
  const acc_list3({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 160,
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
              acc_card3(
                text: "Credits",
                icon: Icons.credit_score_outlined,
                num: 4000,
              ),
              acc_card2(text: "Add Promo Code", icon: Icons.code_off_outlined)
            ],
          ),
        ),
      ),
    );
  }
}
