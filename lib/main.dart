import 'package:flutter/material.dart';
import 'package:toters/aref/screen2.dart';
import 'package:toters/layth/home.dart';
import 'package:toters/layth/navBar.dart';
import 'package:toters/maryam/screen1.dart';
import 'package:toters/sarah9/screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyNavBar(),
    );
  }
}
