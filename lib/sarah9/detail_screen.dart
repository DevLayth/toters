import 'package:flutter/material.dart';
import 'package:toters/sarah9/food_model.dart';
class detail_screen extends StatefulWidget {
  final Product foodDetail;
  const detail_screen({super.key, required this.foodDetail});

  @override
  State<detail_screen> createState() => _detail_screenState();
}

class _detail_screenState extends State<detail_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
body: SafeArea(child: Column(children: [
  Text(widget.foodDetail.title),

],)),



    );
  }
}