import 'package:flutter/material.dart';
import 'package:toters/aref/screen2.dart';
import 'package:toters/layth/home.dart';
import 'package:toters/maryam/screen1.dart';
import 'package:toters/sarah9/screen3.dart';

class MyNavBar extends StatefulWidget {
  @override
  _MyNavBarState createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    home_screen(),
    Screen3(),
    screen2(),
    screen1(),
    screen1(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Navigate to a new screen when an item is tapped
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => home_screen()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Screen3()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen2()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen1()),
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen1()),
        );
        break;
    }
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
                icon: Icon(Icons.rice_bowl_outlined),
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
            iconSize: 30,
            unselectedItemColor: Color.fromARGB(129, 0, 0, 0),
            selectedItemColor: Color.fromARGB(255, 62, 180, 137),
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
