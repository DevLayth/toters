import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toters/colors.dart';
import 'package:toters/layth/rest_card.dart';
import 'package:toters/layth/rest_data.dart';
import 'package:toters/layth/resturant_data_fetch.dart';

import 'data_classes.dart';

class top_picks extends StatelessWidget {
  const top_picks({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        height: 320,
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              left: 10,
              child: Text(
                "Top Picks, Just For You",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: 30,
              left: 10,
              child: Container(
                width: 320,
                child: Text(
                    "Having trouble deciding what to eat? Check out the selection or restaurants we picked for you!"),
              ),
            ),
            Positioned(
              left: 275,
              top: 4,
              child: Icon(
                Icons.star,
                color: Colors.amber,
              ),
            ),
            Positioned(
              top: 80,
              child: Container(
                height: 225,
                width: 415,
                child: FutureBuilder<List<Restaurant>>(
                  future: fetchRestaurants(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      final restaurants = snapshot.data!;
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: restaurants.length,
                        itemBuilder: (context, index) {
                          final restaurant = restaurants[index];

                          return Padding(
                            padding: const EdgeInsets.only(
                                right: 20, left: 15, top: 0),
                            child: Container(
                              width: 340,
                              child: rest_card(
                                  img: restaurant.image,
                                  name: restaurant.name,
                                  desc: restaurant.desc,
                                  diliver: restaurant.diliver.toString() +
                                      " - " +
                                      (restaurant.diliver + 10).toString()),
                            ),
                          );
                        },
                      );
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
        ),
      ),
    );
  }
}
