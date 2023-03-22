import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
        child: Column(  children: [
          CustomAppbar(),
SizedBox(
  height: 20,
),
          Row(
            children: [
              CategoryList(),
            ],
          )
        ],),
      ),
    );
  }
}

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
    backgroundColor: Color.fromARGB(255, 13,180,138),
    shape: RoundedRectangleBorder(

      borderRadius: BorderRadius.circular(10)
    ),
      
      label:const Padding(
      padding:
        EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
        child: Text("Restaurants",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600),
          ),
      )
        );
  }
}
