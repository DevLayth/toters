import 'package:flutter/material.dart';
import 'package:toters/aref/screen2.dart';
import 'package:toters/colors.dart';
import 'package:toters/layth/home_screen.dart';
import 'package:toters/maryam/account_screen.dart';
import 'package:toters/maryam/order_screen.dart';
import 'package:toters/maryam/order_screen_click.dart';
import 'package:toters/sarah9/s1.dart';
import 'package:toters/sarah9/screen3.dart';

class MyNavBar extends StatefulWidget {
  @override
  _MyNavBarState createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    home_screen(),
    s1(),
    Foodpage(),
    order_screen(),
    acoount_screen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Center(child: _widgetOptions.elementAt(_selectedIndex)),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.diamond_outlined),
                label: 'Butler',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list_alt_sharp),
                label: 'Orders',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Account',
              ),
            ],
            currentIndex: _selectedIndex,
            iconSize: 25,
            unselectedItemColor: Color.fromARGB(129, 0, 0, 0),
            selectedItemColor: Tcolor,
            onTap: _onItemTapped,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
      ]),
    );
  }
}
