import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toters/colors.dart';
import 'package:toters/layth/catg.dart';
import 'package:toters/layth/green_pts_card.dart';
import 'package:toters/layth/offer_slider.dart';
import 'package:toters/layth/rest_card.dart';
import 'package:toters/layth/rest_data_modul.dart';
import 'package:toters/main.dart';

class home_screen extends StatelessWidget {
  const home_screen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_none_outlined,
                    color: Colors.black26, size: 30))
          ],
          backgroundColor: Colors.white,
          flexibleSpace: Container(
            child: Stack(
              children: [
                Positioned(
                  top: 40,
                  left: 10,
                  child: Text(
                    "Dilivering To",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 10,
                  child: Text(
                    "Layth",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: ListView(
          children: [
            GreenPts(),
            Container(
                height: 430,
                width: 450,
                color: Colors.white,
                child: Column(
                  children: [
                    Offers(),
                    catg(),
                  ],
                )),
            Container(
              child: rest_card(
                name: rest_data[1].name,
                Type: rest_data[1].Type,
                dliver: rest_data[1].dliver,
                img: rest_data[1].img,
              ),
            )
          ],
        ),
      ),
    );
  }
}
