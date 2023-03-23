import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'Category_List.dart';
import 'custom_appbar.dart';

class s1 extends StatefulWidget {
  const s1({super.key});

  @override
  State<s1> createState() => _s1State();
}

class _s1State extends State<s1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      body: SafeArea(
        child: ListView(  children: [
          CustomAppbar(),
SizedBox(
  height: 20,
),
          Container(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CategoryList(press: () {  }, 
                title: "Restaurants",),
                  CategoryList(press: () {  }, 
                title: "Coffee shop",),
                  CategoryList(press: () {  }, 
                title: "Pasta shop",),
                  CategoryList(press: () {  }, 
                title: "Salad shop",),
              ],
            ),
          )
        ],),
      ),
    );
  }
}