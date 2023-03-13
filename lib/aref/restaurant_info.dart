import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RestaurantInfo extends StatelessWidget {
  const RestaurantInfo({
    Key? key,
  }) : super(key: key);

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
              style: Theme.of(context).textTheme.headline6,
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
                    Text("Chinese, American, Deshi food")
                  ],
                ),
              ),
            ),
            Row(
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    primary: const Color(0xFF22A45D),
                    fixedSize: const Size(120, 40),
                    side: const BorderSide(color: Color(0xFF22A45D)),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  child: Text(
                    "Take away".toUpperCase(),
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    primary: Color.fromARGB(255, 16, 108, 212),
                    fixedSize: const Size(120, 40),
                    side: const BorderSide(
                        color: Color.fromARGB(255, 17, 164, 201)),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  child: Text(
                    "earn pints".toUpperCase(),
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
                const SizedBox(width: 8),
                const SizedBox(width: 4),
              ],
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
