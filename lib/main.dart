import 'package:flutter/material.dart';
import 'package:toters/aref/screen2.dart';
import 'package:toters/layth/home.dart';
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
    int index = 0;
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: NavigationBar(
          selectedIndex: index,
          height: 55,
          backgroundColor: Colors.white,
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_filled),
              label: "Home",
              selectedIcon: Icon(
                Icons.home_filled,
                color: Colors.green,
              ),
            ),
            NavigationDestination(
              icon: Icon(Icons.search),
              label: "Search",
              selectedIcon: Icon(
                Icons.search,
                color: Colors.green,
              ),
            ),
            NavigationDestination(
              icon: Icon(Icons.add_box),
              label: "Butler",
              selectedIcon: Icon(
                Icons.add_box,
                color: Colors.green,
              ),
            ),
            NavigationDestination(
              icon: Icon(Icons.list_alt_outlined),
              label: "Orders",
              selectedIcon: Icon(
                Icons.list_alt_outlined,
                color: Colors.green,
              ),
            ),
            NavigationDestination(
              icon: Icon(Icons.account_box_outlined),
              label: "Accounts",
              selectedIcon: Icon(
                Icons.account_box_outlined,
                color: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }
}
