import 'package:flutter/material.dart';
import 'package:lab7/first_screen.dart';
import 'package:lab7/second_screen.dart';
import 'package:lab7/third_screen.dart';

class BottomNavigationHomeScreen extends StatefulWidget {
  const BottomNavigationHomeScreen({super.key});

  @override
  State<BottomNavigationHomeScreen> createState() => _BottomNavigationHomeScreenState();
}

class _BottomNavigationHomeScreenState extends State<BottomNavigationHomeScreen> {
  int _selectedIndex = 0;

  static final _widgetOptions = <Widget>[
    const FirstScreen(),
    const SecondScreen(),
    const ThirdScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Tab Navigation'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
