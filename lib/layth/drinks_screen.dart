import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toters/layth/rest_card.dart';
import 'package:toters/layth/rest_data.dart';
import 'package:toters/maryam/account_screen.dart';

class Drinks_screen extends StatelessWidget {
  const Drinks_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            Icon(
              Icons.backpack_outlined,
              color: Colors.black,
            )
          ],
          title: Text(
            "Drinks",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView.builder(
            itemCount: r_data.length,
            itemBuilder: (context, index) {
              if (r_data[index].rate == 4.7) {
                return rest_card(
                  img: r_data[index].img!,
                  name: r_data[index].name!,
                  diliver: r_data[index].dliver!,
                  desc: r_data[index].desc!,
                );
              } else
                return ListBody();
            }),
      ),
    );
  }
}
