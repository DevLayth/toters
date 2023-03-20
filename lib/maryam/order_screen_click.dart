import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> parent of b328fb7 (Delete extra imports .)
import 'package:flutter/widgets.dart';
import 'package:toters/maryam/order_list.dart';
import 'package:toters/maryam/total_of_order.dart';
import 'package:flutter/material.dart';
>>>>>>> parent of b328fb7 (Delete extra imports .)

import 'order_card_clicked.dart';

class order_screen_click extends StatelessWidget {
  const order_screen_click({super.key});

  @override
  Widget build(BuildContext context) {
    return order_card_clicked(
        name: "test", img: "assets/rest/ofelia.png", date: "00000", id: 0);
  }
}
