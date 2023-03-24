import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class menu_card extends StatelessWidget {
  final String pic;
  final String name;
  final String desc;
  final int price;
  const menu_card(
      {super.key,
      required this.desc,
      required this.name,
      required this.pic,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        height: 100,
        child: Center(
          child: Row(
            children: [
              SizedBox(
                width: 125,
                child: Image.asset(pic),
              ),
              SizedBox(width: 10),
              Expanded(
                child: DefaultTextStyle(
                  style: const TextStyle(color: Colors.black54),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 15,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 0),
                        child: Text(
                          name,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            desc,
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      Container(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            price.toString(),
                            style: TextStyle(
                                color: Color.fromARGB(255, 9, 143, 14),
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
