import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toters/colors.dart';
import 'package:toters/layth/circle_food_card.dart';
import 'package:toters/layth/resturant_data_fetch.dart';

import 'data_classes.dart';

class picks_week_list extends StatelessWidget {
  const picks_week_list({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Container(
            height: 300,
            color: Colors.white,
            child: Stack(
              children: [
                Positioned(
                  left: 10,
                  child: Text(
                    "Picks of the Week",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 10,
                  child: Container(
                    width: 320,
                    child: Text(
                        "Want a delicious go_to? Try our weekly recommendations, curated by our team."),
                  ),
                ),
                Positioned(
                  right: 20,
                  top: 10,
                  child: Icon(
                    Icons.chevron_right_outlined,
                    color: Tcolor,
                    size: 35,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  child: Container(
                    height: 220,
                    width: 415,
                    child: FutureBuilder<List<Restaurant>>(
                      future: fetchRestaurants(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          final restaurants = snapshot.data!;

                          return ListView.builder(
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: restaurants.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, right: 10),
                                  child: Container(
                                    child: circle_food(
                                      name: restaurants[index].menu[0].name,
                                      rest: restaurants[index].name,
                                      price: restaurants[index].menu[0].price,
                                      img: restaurants[index].menu[0].img,
                                    ),
                                  ),
                                );
                              });
                        } else if (snapshot.hasError) {
                          return Center(child: Text('${snapshot.error}'));
                        } else {
                          return Center(child: CircularProgressIndicator());
                        }
                      },
                    ),
                  ),
                )
              ],
            )));
  }
}
