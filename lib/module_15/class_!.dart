import 'package:flutter/material.dart';

import '../module_11/class_2.dart';
import '../module_11/class_3.dart';
import '../module_14/class_2.dart';
import '../module_14/class_3.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _seclectedIndex = 0;

  List<Widget> _screens = [
    Module11Class2(),
    Module14Class2(),
    Module14Class3(),
    Module11Class3()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_seclectedIndex],
      bottomNavigationBar: NavigationBar(

        selectedIndex: _seclectedIndex,
        onDestinationSelected: (int index){
          _seclectedIndex = index;
          setState(() {

          });
        },

        destinations: [
          NavigationDestination(icon: Icon(Icons.home),
            label: 'Home'
            ),
          NavigationDestination(icon: Icon(Icons.message),
            label: 'Inbox'
            ),
          NavigationDestination(icon: Icon(Icons.search),
            label: 'Search'
            ),
          NavigationDestination(icon: Icon(Icons.person),
            label: 'Profile'
            ),
          ],
      ),
    );
  }
}
