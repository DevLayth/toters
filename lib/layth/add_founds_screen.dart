import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toters/colors.dart';

class add_founds extends StatefulWidget {
  const add_founds({super.key});

  @override
  State<add_founds> createState() => _add_foundsState();
}

class _add_foundsState extends State<add_founds> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Add funds",
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          height: 710,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Tcolor,
                        minimumSize: Size(double.infinity, 50),
                      ),
                      onPressed: () {},
                      child: Stack(
                        children: [
                          Container(
                            width: 180,
                            height: 10,
                          ),
                          Text("Add funds"),
                          Positioned(right: 0, child: Text("IQD 12500"))
                        ],
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
