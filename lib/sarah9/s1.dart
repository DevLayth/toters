import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class s1 extends StatefulWidget {
  const s1({super.key});

  @override
  State<s1> createState() => _s1State();
}

class _s1State extends State<s1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0.0,
    leading: Icon(Icons.sort),
    actions: [
      
    ],



    ),
    body: Column(children: [
      TextField(
        decoration: InputDecoration(
          hintText: "Search for store or an item",
          hintStyle: TextStyle(color: Colors.white),
          prefixIcon: Icon(Icons.search,color: Colors.white,),
          filled: true,
          fillColor: Color(0xff3a3e3e),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10))
        ),
      ),
Container(
  height: 80,
  width: 80,
  decoration: BoxDecoration(
    color: Colors.grey,
    borderRadius: BorderRadius.circular(10)
  ),
),
    ]),
    );
  }
}