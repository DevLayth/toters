import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toters/maryam/acc_card2.dart';
import 'package:toters/maryam/acc_card3.dart';

class acc_list2 extends StatelessWidget {
  const acc_list2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 250,
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
                children: [Text("Toters Cash "), Icon(Icons.info_outline)],
              ),
              acc_card3(
                text: "Wallet",
                icon: Icons.wallet,
                num: 0,
              ),
              acc_card2(text: "Add funds", icon: Icons.add),
              acc_card2(text: "Send funds", icon: Icons.send)
            ],
          ),
        ),
      ),
    );
  }
}
