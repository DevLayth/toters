import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:toters/colors.dart';

import 'custom_appbar.dart';


class s1 extends StatefulWidget {
  const s1({super.key});

  @override
  State<s1> createState() => _s1State();
}

class _s1State extends State<s1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.white,
    body:SafeArea(
      child: Column(children: [
        customAppbar(),
        Chip( backgroundColor: Tcolor,
          label: Text("Restaurants"))
      ]),
    ),
    );
  }
}
