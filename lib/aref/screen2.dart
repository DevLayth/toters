import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toters/aref/restaurant_info.dart';
import 'package:toters/aref/restinfo.dart';
import 'package:toters/aref/resturant_card.dart';
import 'package:toters/layth/catg_card.dart';
import 'package:toters/layth/data_classes.dart';

import '../layth/resturant_data_fetch.dart';

class Foodpage extends StatelessWidget {
  final int id;
  const Foodpage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Restaurant>>(
        future: fetchRestaurants(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final restaurants = snapshot.data!.toList();

            return Container(
              height: 750,
              child: ListView(
                children: [
                  resturant_card(
                      pic: restaurants[id].image,
                      name: restaurants[id].name,
                      desc: restaurants[id].desc),
                  Container(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: restaurants[id].menu.length,
                      itemBuilder: (context, index) {
                        return menu_card(
                            desc: restaurants[id].menu[index].desc,
                            name: restaurants[id].menu[index].name,
                            pic: restaurants[id].menu[index].img,
                            price: restaurants[id].menu[index].price);
                      },
                    ),
                  )
                  // menu_card(desc: restaurants[id].menu[id].name, name: name, pic: pic, price: price)
                ],
              ),
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('${snapshot.error}'));
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
