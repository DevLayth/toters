import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'order_card_clicked.dart';

class order_screen_click extends StatelessWidget {
  const order_screen_click({super.key});

  @override
  Widget build(BuildContext context) {
    return order_card_clicked(
        name: "test", img: "assets/rest/ofelia.png", date: "00000", id: 0);
  }
}
