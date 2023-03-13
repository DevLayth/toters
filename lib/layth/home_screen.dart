import 'package:flutter/material.dart';
import 'package:toters/layth/catg_grid.dart';
import 'package:toters/layth/green_pts_card.dart';
import 'package:toters/layth/offer_slider.dart';
import 'package:toters/layth/rest_card.dart';
import 'package:toters/layth/rest_data.dart';

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
                    "KRO",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Positioned(
                    top: 56, left: 35, child: Icon(Icons.arrow_drop_down))
              ],
            ),
          ),
        ),
        body: ListView(
          children: [
            GreenPts(),
            Container(
                height: 425,
                width: 450,
                color: Colors.white,
                child: Column(
                  children: [
                    Offers(),
                    catg_grid(),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(right: 80, left: 20),
              child: rest_card(
                  img: "assets/rest/texas.png",
                  name: "texas",
                  desc: "food",
                  diliver: "15-30"),
            ),
          ],
        ),
      ),
    );
  }
}
