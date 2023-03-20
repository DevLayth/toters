import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class rate_star extends StatelessWidget {
  final Color Cc;
  const rate_star({super.key, required this.Cc});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: Cc,
      size: 30,
    );
  }
}
