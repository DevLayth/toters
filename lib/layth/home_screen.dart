import 'package:flutter/material.dart';
import 'package:toters/colors.dart';
import 'package:toters/layth/catg_bar_card.dart';
import 'package:toters/layth/catg_bar_list.dart';
import 'package:toters/layth/catg_grid.dart';
import 'package:toters/layth/green_pts_card.dart';
import 'package:toters/layth/near_free_list.dart';
import 'package:toters/layth/offer_slider.dart';
import 'package:toters/layth/picks_of_the_week.dart';
import 'package:toters/layth/recomended_rest.dart';
import 'package:toters/layth/rest_card.dart';
import 'package:toters/layth/rest_data.dart';
import 'package:toters/layth/top_picks_list.dart';

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
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
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
            top_picks(),
            near_free(),
            picks_week_list(),
            catg_bar_list(),
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 15),
              child: Container(
                color: Colors.white,
                child: Text(
                  "Recomended",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            recomended_rest(),
            Container(
              height: 70,
            )
          ],
        ),
      ),
    );
  }
}
