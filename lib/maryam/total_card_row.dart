import 'package:flutter/material.dart';

class total_card_row extends StatelessWidget {
  final String text;
  final String price;
  const total_card_row({super.key, required this.text, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(17.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 17,
            ),
          ),
          Text(
            price,
            style: TextStyle(
                fontSize: 17,
                color: Colors.black45,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
