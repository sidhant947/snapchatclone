import 'package:flutter/material.dart';

import '../screens/ChatSnap.dart';
import '../screens/LensSnap.dart';
import '../screens/MapSnap.dart';
import '../screens/PeopleSnap.dart';
import '../screens/Spotlight.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex = 2;

  void _bottomnavbar(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  final List<Widget> _screens = [
    MapSnap(),
    ChatSnap(),
    LensSnap(),
    PeopleSnap(),
    Spotlight(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectIndex,
          type: BottomNavigationBarType.fixed,
          onTap: _bottomnavbar,
          selectedFontSize: 0,
          backgroundColor: Colors.black,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.pin_drop), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outline), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.people_outline), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.play_arrow_rounded), label: ""),
          ]),
    );
  }
}
