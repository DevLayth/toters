import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/widgets.dart';
import 'package:toters/maryam/order_list.dart';
import 'package:toters/maryam/total_of_order.dart';
import 'package:flutter/material.dart';

import 'order_card_clicked.dart';
import 'orders_data.dart';

class order_screen_click extends StatelessWidget {
  final int id;
  const order_screen_click({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: ListView(
          children: [
            order_card_clicked(
                name: orderlist[id].name,
                img: orderlist[id].img,
                date: orderlist[id].date,
                id: id),
            total_of_order(
              sub: orderlist[id].total.toInt(),
              df: orderlist[id].df,
            )
          ],
        ),
      ),
    );
  }
}
