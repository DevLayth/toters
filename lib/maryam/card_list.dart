import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toters/maryam/order_screen_click.dart';

import 'order_card.dart';
import 'orders_data.dart';

class card_list extends StatelessWidget {
  const card_list({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: orderlist.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => order_screen_click(
                              id: index,
                            )));
              },
              child: order_card(
                  name: orderlist[index].name,
                  img: orderlist[index].img,
                  date: orderlist[index].date,
                  total: orderlist[index].total,
                  df: orderlist[index].df,
                  id: index));
        });
  }
}
