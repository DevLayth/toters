import 'package:flutter/material.dart';
import 'package:toters/maryam/acc_card2.dart';

class acc_list5 extends StatelessWidget {
  const acc_list5({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
      child: Container(
        height: 300,
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
                        "Help Center ",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
              acc_card2(
                  text: "Get Support", icon: Icons.support_agent_outlined),
              Divider(
                thickness: 1,
                color: Color.fromARGB(129, 197, 192, 192),
                indent: 25,
                endIndent: 25,
              ),
              acc_card2(text: "Support Tickets", icon: Icons.message),
              Divider(
                thickness: 1,
                color: Color.fromARGB(129, 197, 192, 192),
                indent: 25,
                endIndent: 25,
              ),
              acc_card2(text: "Legal", icon: Icons.plumbing_outlined),
              Divider(
                thickness: 1,
                color: Color.fromARGB(129, 197, 192, 192),
                indent: 25,
                endIndent: 25,
              ),
              acc_card2(text: "FAQ", icon: Icons.help_outline),
            ],
          ),
        ),
      ),
    );
  }
}
