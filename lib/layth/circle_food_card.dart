import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toters/colors.dart';

class circle_food extends StatelessWidget {
  const circle_food({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          height: 225,
          width: 150,
          child: Stack(
            children: [
              Positioned(
                top: 10,
                left: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 65,
                  backgroundImage: AssetImage("assets/rest/ofelia.png"),
                ),
              ),
              Positioned(
                  bottom: 30,
                  left: 15,
                  child: Text(
                    "Rizo",
                    style: TextStyle(fontSize: 20),
                  )),
              Positioned(
                  bottom: 18,
                  left: 15,
                  child: Text(
                    "Rest Name ",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )),
              Positioned(
                  bottom: 0,
                  left: 15,
                  child: Text(
                    "IQD " + "6000",
                    style:
                        TextStyle(color: Tcolor, fontWeight: FontWeight.w600),
                  )),
            ],
          ),
        )
      ],
    );
  }
}
