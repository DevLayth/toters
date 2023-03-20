import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toters/maryam/acc_card2.dart';
import 'package:toters/maryam/acc_card3.dart';

class acc_list4 extends StatelessWidget {
  const acc_list4({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
      child: Container(
        height: 365,
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
                        "Account details",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
              acc_card2(text: "Notification", icon: Icons.notifications_none),
              Divider(
                thickness: 1,
                color: Color.fromARGB(129, 197, 192, 192),
                indent: 25,
                endIndent: 25,
              ),
              acc_card2(text: "Addresses", icon: Icons.location_on_outlined),
              Divider(
                thickness: 1,
                color: Color.fromARGB(129, 197, 192, 192),
                indent: 25,
                endIndent: 25,
              ),
              acc_card2(text: "Favorites", icon: Icons.favorite_border_rounded),
              Divider(
                thickness: 1,
                color: Color.fromARGB(129, 197, 192, 192),
                indent: 25,
                endIndent: 25,
              ),
              acc_card2(text: "Preferences", icon: Icons.room_preferences),
              Divider(
                thickness: 1,
                color: Color.fromARGB(129, 197, 192, 192),
                indent: 25,
                endIndent: 25,
              ),
              acc_card2(text: "Refer a friend", icon: Icons.person_2_outlined),
            ],
          ),
        ),
      ),
    );
  }
}
