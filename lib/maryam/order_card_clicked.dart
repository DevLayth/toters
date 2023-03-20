import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:toters/colors.dart';
import 'package:toters/maryam/order_list.dart';
<<<<<<< HEAD
=======
import 'package:toters/maryam/order_list_card_with_img.dart';
import 'package:toters/maryam/rate_star.dart';
import 'package:toters/maryam/total_of_order.dart';
>>>>>>> 271cbf552b7ae1446c0eaab2c654e3000b983716

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
<<<<<<< HEAD
=======
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
>>>>>>> 271cbf552b7ae1446c0eaab2c654e3000b983716
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
<<<<<<< HEAD
              height: 350,
              color: Colors.white,
              child: ListView(
=======
              height: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
>>>>>>> 271cbf552b7ae1446c0eaab2c654e3000b983716
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
<<<<<<< HEAD
                  Container(
                      height: 80,
=======
                  Divider(
                    thickness: 1,
                    color: Color.fromARGB(129, 197, 192, 192),
                    indent: 25,
                    endIndent: 25,
                  ),
                  Container(
                      height: 60,
>>>>>>> 271cbf552b7ae1446c0eaab2c654e3000b983716
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
<<<<<<< HEAD
                  Container(
                    height: 80,
=======
                  Divider(
                    thickness: 1,
                    color: Color.fromARGB(129, 197, 192, 192),
                    indent: 25,
                    endIndent: 25,
                  ),
                  Container(
                    height: 50,
>>>>>>> 271cbf552b7ae1446c0eaab2c654e3000b983716
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
<<<<<<< HEAD
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
=======
                  Divider(
                    thickness: 1,
                    color: Color.fromARGB(129, 197, 192, 192),
                    indent: 25,
                    endIndent: 25,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 10),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Tcolor),
                                ),
                                minimumSize: Size(160, 50),
                              ),
                              onPressed: () {},
                              icon: Icon(
                                Icons.support_agent_outlined,
                                color: Tcolor,
                              ),
                              label: const Text(
                                "Support",
                                style: TextStyle(color: Tcolor),
                              )),
                          ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Tcolor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Tcolor),
                                ),
                                minimumSize: Size(160, 50),
                              ),
                              onPressed: () {},
                              icon: Icon(
                                Icons.replay,
                                color: Colors.white,
                              ),
                              label: const Text(
                                "Reorder",
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      ),
>>>>>>> 271cbf552b7ae1446c0eaab2c654e3000b983716
                    ),
                  )
                ],
              )),
        ),
<<<<<<< HEAD
=======
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "You Rated",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Row(
                      children: [
                        rate_star(Cc: Colors.amber),
                        rate_star(Cc: Colors.amber),
                        rate_star(Cc: Colors.amber),
                        rate_star(Cc: Color.fromARGB(60, 0, 0, 0)),
                        rate_star(Cc: Color.fromARGB(60, 0, 0, 0)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Your Order",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 5),
                      child: Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color.fromARGB(56, 62, 180, 137)),
                        child: Center(
                            child: Text(
                          "Delivered",
                          style: TextStyle(
                              color: Tcolor, fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          order_card_list_with_img(),
                          order_card_list_with_img()
                        ],
                      ),
                    )
                  ]),
            )),
       
      
>>>>>>> 271cbf552b7ae1446c0eaab2c654e3000b983716
      ],
    );
  }
}
