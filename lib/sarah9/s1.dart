import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:toters/colors.dart';
import 'package:toters/sarah9/food_model.dart';

import 'category_list.dart';
import 'custom_appbar.dart';


class s1 extends StatefulWidget {
  const s1({super.key});

  @override
  State<s1> createState() => _s1State();
}

class _s1State extends State<s1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.white,
    body:SafeArea(
      child: ListView(children:  [
        //appbar
        customAppbar(),
        SizedBox(height: 20,
        ),
        CategoryCard(),
        //create model our app food
        Container( padding:const EdgeInsets.all(10.0),
          decoration: 
        BoxDecoration(
          color: Tcolor.withOpacity(1),
          borderRadius: BorderRadius.circular(10.0)),
          child: Column(children: [
            Image.asset(foodProducts[1].image)
          ],),
        ),
      ],
      
      
      ),
    ),
    );
  }
}
