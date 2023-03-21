import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toters/colors.dart';
import 'package:toters/layth/rest_card.dart';
import 'package:toters/layth/resturant_data_fetch.dart';
import 'package:toters/maryam/account_screen.dart';

import 'data_classes.dart';

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
        body: Center(
          child: Container(
            child: FutureBuilder<List<Restaurant>>(
              future: fetchRestaurants(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final restaurants = snapshot.data!
                      .where((restaurant) => restaurant.type == "drink")
                      .toList();
                  return Container(
                    color: Colors.white,
                    child: ListView.builder(
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
            ),
          ),
        ),
      ),
    );
  }
}
/*
return Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: rest_card(
                            img: r_data[index].img!,
                            name: r_data[index].name!,
                            diliver: r_data[index].dliver!,
                            desc: r_data[index].desc!,
                          ),
                        );
                      }
*/