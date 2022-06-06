// ignore: file_names

import 'package:flutter/material.dart';
import 'package:music_app/screens/radio_page.dart';
import 'home_screen/home_page.dart';
import 'profile_screen/profile_page.dart';

class NavigationPage extends StatefulWidget {
  static const String id = 'navigation_page';

  const NavigationPage({Key? key}) : super(key: key);
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _selectedIndex = 0; //

  final _screens = [const HomePage(), const ProfilePage(), const RadioPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: _screens
            .asMap()
            .map((i, screen) => MapEntry(
                i,
                Offstage(
                  offstage: _selectedIndex != i,
                  child: screen,
                )))
            .values
            .toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 40, 41, 69),
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (i) => setState(() => _selectedIndex = i),
        selectedFontSize: 10.0,
        unselectedFontSize: 10.0,
        selectedItemColor: const Color(0XFFFF7A8A),
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.home_outlined, color: Colors.grey),
            activeIcon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined, color: Colors.grey),
            activeIcon: Icon(Icons.person),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.radio_outlined, color: Colors.grey),
            activeIcon: Icon(Icons.radio),
            label: "Radio",
          ),
        ],
      ),
    );
  }
}
