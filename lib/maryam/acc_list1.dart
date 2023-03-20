import 'package:flutter/material.dart';
import 'package:toters/maryam/acc_card.dart';

class acc_list1 extends StatelessWidget {
  const acc_list1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 15, right: 15),
      child: Container(
        height: 115,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              acc_card(text: "  Profile", icon: Icons.manage_accounts_outlined),
              acc_card(text: " Support", icon: Icons.support_agent_outlined),
              acc_card(text: "Payments", icon: Icons.payment_outlined),
              acc_card(text: "Language", icon: Icons.language_outlined)
            ],
          ),
        ),
      ),
    );
  }
}
