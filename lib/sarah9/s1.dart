import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:toters/colors.dart';
import 'package:toters/sarah9/food_model.dart';

import 'category_list.dart';
import 'custom_appbar.dart';
import 'food_product.dart';


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
      child: ListView(children: const [
        //appbar
        customAppbar(),
        SizedBox(height: 20,
        ),
        CategoryCard(),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Popular Food",style:  TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold),),
        ),



        //create model our app food
        FoodCard(),
        
      ],
      
      
      ),
    ),
    );
  }
}
