import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:toters/maryam/order_card.dart';

class order_screen extends StatelessWidget {
  const order_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            " Orders",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Stack(
          children: [
            Positioned(
                left: 20,
                top: 20,
                child: Text(
                  "Past Orders",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                )),
            Container(
              child: ListView(
                children: [order_card(), order_card()],
              ),
            )
          ],
        ),
      ),
    );
  }
}
