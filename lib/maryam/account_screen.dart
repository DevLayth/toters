import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:toters/colors.dart';
import 'package:toters/maryam/acc_card.dart';
import 'package:toters/maryam/acc_card2.dart';
import 'package:toters/maryam/acc_list1.dart';
import 'package:toters/maryam/acc_list2.dart';
import 'package:toters/maryam/acc_list3.dart';
import 'package:toters/maryam/acc_list4.dart';
import 'package:toters/maryam/acc_list5.dart';
import 'package:toters/maryam/green_pts_card.dart';

class acoount_screen extends StatelessWidget {
  const acoount_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              "ِAccount Name",
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: ListView(
            children: [
              green_pts_card(),
              acc_list1(),
              acc_list2(),
              acc_list3(),
              acc_list4(),
              acc_list5(),
              Container(
                height: 60,
              )
            ],
          )),
    );
  }
}
