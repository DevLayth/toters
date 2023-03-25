import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RestaurantInfo extends StatelessWidget {
  final String pic;
  final String name;
  final String desc;
  RestaurantInfo(
      {super.key, required this.desc, required this.name, required this.pic});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Mayfield Bakery & Cafe",
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFF868686),
                ),
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: CircleAvatar(
                        radius: 2,
                        backgroundColor: Color(0xFF868686),
                      ),
                    ),
                    Text("Chinese, American, Deshi food"),
                    Positioned(bottom: 2, child: Icon(Icons.star))
                  ],
                ),
              ),
            ),

            const Spacer(),
            Row(
              children: [
                const SizedBox(width: 24),
                const Spacer(),
              ],
            ),
            // const Spacer(),
          ],
        ),
      ),
    );
  }
}
