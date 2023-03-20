
import 'package:flutter/widgets.dart';
import 'package:toters/maryam/order_list_card.dart';
import 'package:toters/maryam/orders_data.dart';

class orders_list extends StatelessWidget {
  final int order;

  const orders_list({super.key,required this.order});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: orderlist[order].ordrs.length,
      itemBuilder: (context, index) {
        return order_list_card(
            num: orderlist[order].ordrs[index].num,
            text: orderlist[order].ordrs[index].text);
      },
    );
  }
}
