import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:toters/colors.dart';
import 'package:toters/maryam/orders_list.dart';

class order_card extends StatelessWidget {
  const order_card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 250,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: CircleAvatar(
              radius: 40.0,
              backgroundImage: AssetImage(
                'assets/rest/ofelia.png',
              ),
            ),
          ),
          Positioned(
              top: 35,
              left: 130,
              child: Text(
                "Rest_name",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          Positioned(
              top: 65,
              left: 130,
              child: Text(
                "Delivered on :",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45),
              )),
          Positioned(
            top: 40,
            right: 20,
            child: Icon(
              Icons.chevron_right_outlined,
              color: Tcolor,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
