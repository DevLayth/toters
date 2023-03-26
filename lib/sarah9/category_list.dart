import 'package:flutter/material.dart';
import 'package:toters/colors.dart';



class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
            CategoryList(press: () {  },
            title: "Restaurants",),
    
    
            CategoryList(press: () {  },
            title: "Coffer Shop",),
    
    
            CategoryList(press: () {  },
            title: "Pasta Shop",),
    
    
            CategoryList(press: () {  },
            title: "Salad Shop",),

        ],
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
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: InkWell(
        onTap: press,
        child: Chip( backgroundColor: Tcolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)),
          label:  Padding(
            padding: const
              EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
            child: Text(
              title,
    
              style: const
            TextStyle(color: Colors.white,
            fontWeight: FontWeight.w600),),
          )),
      ),
    );
  }
}
