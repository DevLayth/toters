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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(children: [
          Row(children: [
            IconButton(onPressed: () {}, icon:const Icon(Icons.menu_rounded,)),
            Expanded(child: Container(
              height: 30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),

              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Serch for store or an item",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),

              ),

            ))




            
          ],)
        ],),
      ),
    );
  }
}