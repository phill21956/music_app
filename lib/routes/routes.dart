import 'package:flutter/material.dart';
import 'package:music_app/screens/navigationPage.dart';
import 'package:music_app/screens/profile_screen/profile_page.dart';
import 'package:music_app/screens/radio_page.dart';

import '../screens/home_screen/home_page.dart';

Map<String, Widget Function(BuildContext)> routes = {
 
  HomePage.id: (context) =>const HomePage(),
  ProfilePage.id: (context) => const ProfilePage(),
  RadioPage.id: (context) => const RadioPage(),
  NavigationPage.id: (context) => const NavigationPage(),
  
};
