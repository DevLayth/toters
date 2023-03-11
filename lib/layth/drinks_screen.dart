import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toters/layth/rest_card.dart';
import 'package:toters/layth/rest_data_modul.dart';
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
            itemCount: rest_data.length,
            itemBuilder: (context, index) {
              if (rest_data[index].rate == 4.7) {
                return rest_card(
                    name: rest_data[index].name,
                    desc: rest_data[index].desc,
                    img: rest_data[index].img,
                    dliver: rest_data[index].dliver);
              } else
                return ListBody();
            }),
      ),
    );
  }
}
