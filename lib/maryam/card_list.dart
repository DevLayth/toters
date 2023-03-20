import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'order_card.dart';
import 'orders_data.dart';

class card_list extends StatelessWidget {
  const card_list({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemCount: orderlist.length,
        itemBuilder: (context, index) {
          return order_card(
              name: orderlist[index].name,
              img: orderlist[index].img,
              date: orderlist[index].date,
              total: orderlist[index].total,
              id: index);
        });
  }
}
