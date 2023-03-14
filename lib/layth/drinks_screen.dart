import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toters/colors.dart';
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
          title: Text(
            "Drinks",
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Center(
            child: Container(
              width: 450,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: ListView.builder(
                    itemCount: r_data.length,
                    itemBuilder: (context, index) {
                      if (r_data[index].type == "Drinks") {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: rest_card(
                            img: r_data[index].img!,
                            name: r_data[index].name!,
                            diliver: r_data[index].dliver!,
                            desc: r_data[index].desc!,
                          ),
                        );
                      } else
                        return ListBody();
                    }),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
