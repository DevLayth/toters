import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toters/colors.dart';
import 'package:toters/main.dart';

class home_screen extends StatelessWidget {
  const home_screen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_none_outlined,
                    color: Colors.black26, size: 30))
          ],
          backgroundColor: Colors.white,
          flexibleSpace: Container(
            child: Stack(
              children: [
                Positioned(
                  top: 40,
                  left: 10,
                  child: Text(
                    "Dilivering To",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 10,
                  child: Text(
                    "Layth",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: ListView(
          children: [
            Container(
              height: 70,
              color: Colors.white,
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 5,
                    child: Text(
                      "Green",
                      style: TextStyle(
                          color: Tcolor,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 10,
                    child: Text(
                      "__ __ __ __ __ __ __ __ __ ",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black38),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 65,
                    child: Icon(
                      Icons.info_outline,
                      color: Tcolor,
                      size: 25,
                    ),
                  ),
                  Positioned(
                      right: 8,
                      top: 10,
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 5,
                              child: Text(
                                "0",
                                style: TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.w800),
                              ),
                            ),
                            Positioned(
                              left: 25,
                              top: 10,
                              child: Text(
                                "Pts",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black54),
                              ),
                            ),
                            Positioned(
                                left: 21,
                                bottom: 10,
                                child: Icon(
                                  Icons.arrow_right_alt,
                                  size: 30,
                                )),
                          ],
                        ),
                      )),
                  Positioned(
                      top: 50,
                      left: 10,
                      child: Text(
                        "10 more order by March 31 to reach Gold.",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 129, 128, 126)),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
