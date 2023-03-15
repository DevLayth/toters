import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toters/aref/menu.dart';
import 'package:toters/aref/restaruant_categories.dart';
import 'package:toters/aref/restaurant_info.dart';
import 'package:toters/layth/catg_card.dart';
import 'package:toters/layth/data_classes.dart';
import 'package:toters/layth/rest_data.dart';

class Foodpage extends StatefulWidget {
  const Foodpage({super.key});

  @override
  State<Foodpage> createState() => _FoodpageState();
}

var selected = 0;
final rest = Restaurant;

class _FoodpageState extends State<Foodpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/rest/texas.png",
                fit: BoxFit.cover,
              ),
            ),
            leading: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            actions: [
              CircleAvatar(
                backgroundColor: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: RestaurantInfo(),
          ),
          SliverToBoxAdapter(
            child: Categories(
              onChanged: (value) {},
              selectedIndex: 0,
            ),
          ),
        ],
      ),
    );
  }
}
