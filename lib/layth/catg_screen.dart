import 'package:flutter/material.dart';
import 'package:toters/layth/rest_card.dart';
import 'package:toters/layth/resturant_data_fetch.dart';

import 'data_classes.dart';

class catg_screen extends StatelessWidget {
  final String Tit;
  const catg_screen({super.key, required this.Tit});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            Tit,
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
        body: Container(
          height: 710,
          child: FutureBuilder<List<Restaurant>>(
            future: fetchRestaurants(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final restaurants = snapshot.data!
                    .where((restaurant) => restaurant.type == Tit)
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
                          right: 20,
                          left: 15,
                          top: 20,
                        ),
                        child: Container(
                          width: 340,
                          height: 260,
                          color: Colors.white,
                          child: rest_card(
                              img: restaurant.image,
                              name: restaurant.name,
                              desc: restaurant.desc,
                              rate: restaurant.rate,
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