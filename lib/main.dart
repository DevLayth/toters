import 'package:flutter/material.dart';
import 'package:toters/layth/navBar.dart';
import 'package:toters/sarah9/s1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: s1(),
    );
  }
}
