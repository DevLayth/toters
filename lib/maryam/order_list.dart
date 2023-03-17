import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:toters/maryam/order_card.dart';
import 'package:toters/maryam/order_list_card.dart';

class orders_list extends StatelessWidget {
  const orders_list({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: [order_list_card(), order_list_card(), order_list_card()],
    );
  }
}
