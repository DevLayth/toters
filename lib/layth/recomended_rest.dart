import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toters/colors.dart';
import 'package:toters/layth/rest_card.dart';
import 'package:toters/layth/rest_data.dart';
import 'package:toters/layth/resturant_data_fetch.dart';
import 'package:toters/maryam/account_screen.dart';

import 'data_classes.dart';

class recomended_rest extends StatelessWidget {
  const recomended_rest({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Restaurant>>(
      future: fetchRestaurants(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final restaurants = snapshot.data!;
          return Container(
            color: Colors.white,
            child: ListView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: restaurants.length,
              itemBuilder: (context, index) {
                final restaurant = restaurants[index];

                return Padding(
                  padding: const EdgeInsets.only(
                      right: 20, left: 15, top: 30, bottom: 10),
                  child: Container(
                    width: 340,
                    color: Colors.white,
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
            ),
          );
        } else if (snapshot.hasError) {
          return Center(child: Text('${snapshot.error}'));
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
