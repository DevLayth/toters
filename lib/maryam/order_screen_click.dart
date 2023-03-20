<<<<<<< HEAD
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
<<<<<<< HEAD
=======
import 'package:flutter/widgets.dart';
import 'package:toters/maryam/total_of_order.dart';
>>>>>>> 271cbf552b7ae1446c0eaab2c654e3000b983716
=======
import 'package:toters/maryam/total_of_order.dart';
import 'package:flutter/material.dart';
>>>>>>> b328fb7e666243221e84d55ebde7c127e9b1ddf3

import 'order_card_clicked.dart';
import 'orders_data.dart';

class order_screen_click extends StatelessWidget {
  final int id;
  const order_screen_click({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
<<<<<<< HEAD
    return order_card_clicked(
        name: "test", img: "assets/rest/ofelia.png", date: "00000", id: 0);
=======
    return ListView(
      children: [
        order_card_clicked(
            name: "test", img: "assets/rest/ofelia.png", date: "00000", id: 0),
        total_of_order()
      ],
=======
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
>>>>>>> b328fb7e666243221e84d55ebde7c127e9b1ddf3
    );
>>>>>>> 271cbf552b7ae1446c0eaab2c654e3000b983716
  }
}
