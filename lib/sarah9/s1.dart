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
              CategoryList(press: () {  }, 
              title: "Restaurants",),
                CategoryList(press: () {  }, 
              title: "Coffee shop",),
                CategoryList(press: () {  }, 
              title: "Pasta shop",),
                CategoryList(press: () {  }, 
              title: "Restaurants",),
            ],
          )
        ],),
      ),
    );
  }
}

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key, required this.title, required this.press,
  });
final String title;
final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Chip(
      backgroundColor: Color.fromARGB(255, 13,180,138),
      shape: RoundedRectangleBorder(
    
        borderRadius: BorderRadius.circular(10)
      ),
        
        label: Padding(
        padding:const
          EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
          child: Text(title,
          style:const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600),
            ),
        )
          ),
    );
  }
}
