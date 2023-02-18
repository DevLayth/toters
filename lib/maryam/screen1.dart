import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class screen1 extends StatelessWidget {
  const screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
        title: Center(child: Text("Maryam Esam")),
      )),
    );
  }
}
