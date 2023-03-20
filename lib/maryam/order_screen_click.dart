import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
<<<<<<< HEAD
=======
import 'package:flutter/widgets.dart';
import 'package:toters/maryam/total_of_order.dart';
>>>>>>> 271cbf552b7ae1446c0eaab2c654e3000b983716

import 'order_card_clicked.dart';

class order_screen_click extends StatelessWidget {
  const order_screen_click({super.key});

  @override
  Widget build(BuildContext context) {
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
    );
>>>>>>> 271cbf552b7ae1446c0eaab2c654e3000b983716
  }
}
