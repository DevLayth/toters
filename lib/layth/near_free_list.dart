import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toters/colors.dart';
import 'package:toters/layth/rest_card.dart';
import 'package:toters/layth/rest_data.dart';

class near_free extends StatelessWidget {
  const near_free({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        height: 340,
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              left: 10,
              child: Text(
                "Near & Free",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: 30,
              left: 10,
              child: Container(
                width: 320,
                child: Text(
                    "Unlock Free delivery from an exclusive list of stores near you"),
              ),
            ),
            Positioned(
              left: 150,
              top: 4,
              child: Icon(
                Icons.bike_scooter,
                color: Colors.red,
              ),
            ),
            Positioned(
              top: 80,
              child: Container(
                height: 225,
                width: 415,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: r_data.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding:
                            const EdgeInsets.only(right: 20, left: 15, top: 0),
                        child: Container(
                          width: 340,
                          child: rest_card(
                              img: r_data[index].img!,
                              name: r_data[index].name!,
                              desc: r_data[index].desc!,
                              diliver: r_data[index].dliver!),
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
