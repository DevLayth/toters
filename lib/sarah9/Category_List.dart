import 'package:flutter/material.dart';


class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key, required this.title, required this.press,
  });
final String title;
final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: InkWell(
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
      ),
    );
  }
}
