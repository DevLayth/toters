import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:toters/maryam/card_list.dart';
import 'package:toters/maryam/order_card.dart';
import 'package:toters/maryam/order_list.dart';
import 'package:toters/maryam/order_list_card.dart';
import 'package:toters/maryam/orders_data.dart';

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
        body: ListView(
          children: [
            Container(
              height: 50,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Past Orders",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height - 200,
                child: card_list())
          ],
        ),
      ),
    );
  }
}
