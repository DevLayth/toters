import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
<<<<<<< HEAD
<<<<<<< HEAD
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:toters/colors.dart';
import 'package:toters/maryam/order_list.dart';
=======
import 'package:flutter/widgets.dart';
import 'package:toters/colors.dart';
import 'package:toters/maryam/order_list.dart';
=======
import 'package:flutter/widgets.dart';
import 'package:toters/colors.dart';
import 'package:toters/maryam/order_list.dart';
>>>>>>> parent of b328fb7 (Delete extra imports .)
import 'package:toters/maryam/order_list_card_with_img.dart';
import 'package:toters/maryam/rate_star.dart';
import 'orders_data.dart';
>>>>>>> parent of b328fb7 (Delete extra imports .)

class order_card_clicked extends StatelessWidget {
  final String name;
  final String img;
  final String date;
  final int id;
  const order_card_clicked(
      {super.key,
      required this.name,
      required this.img,
      required this.date,
      required this.id});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
              height: 350,
              color: Colors.white,
              child: ListView(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                        ),
                      ),
                      Positioned(
                        top: 20,
                        left: 20,
                        child: CircleAvatar(
                          radius: 40.0,
                          backgroundImage: AssetImage(
                            img,
                          ),
                        ),
                      ),
                      Positioned(
                          top: 35,
                          left: 130,
                          child: Text(
                            name,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                      Positioned(
                          top: 65,
                          left: 130,
                          child: Text(
                            "Delivered on :" + date,
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
                  Container(
                      height: 80,
                      child: Stack(
                        children: [
                          Positioned(
                              left: 30,
                              top: 10,
                              child: Icon(
                                Icons.location_on_outlined,
                                color: Colors.black45,
                                size: 35,
                              )),
                          Positioned(
                              left: 80,
                              top: 5,
                              child: Text("Home",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold))),
                          Positioned(
                              left: 80,
                              top: 30,
                              child: Text("E2,10-  43",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black45,
                                      fontWeight: FontWeight.bold)))
                        ],
                      )),
                  Container(
                    height: 80,
                    child: Stack(
                      children: [
                        Positioned(
                            left: 30,
                            top: 10,
                            child: Icon(
                              Icons.electric_bike_outlined,
                              color: Colors.black45,
                              size: 30,
                            )),
                        Positioned(
                            left: 80,
                            top: 15,
                            child: Text("Walid Asaad",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)))
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: BorderSide(color: Tcolor),
                              ),
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {},
                            icon: Icon(
                              Icons.support_agent_outlined,
                              color: Tcolor,
                            ),
                            label: const Text(
                              "Support",
                              style: TextStyle(color: Tcolor),
                            ))
                      ],
                    ),
                  )
                ],
              )),
        ),
      ],
    );
  }
}
