import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toters/maryam/total_card_row.dart';

class total_of_order extends StatelessWidget {
  const total_of_order({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 400,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ]),
          child: ListView(
            children: [
              total_card_row(
                text: "Subtotal",
                price: " IQD 8000",
              ),
              total_card_row(
                text: "Delivery Charge",
                price: " IQD 2500",
              )
            ],
          ),
        ));
  }
}
