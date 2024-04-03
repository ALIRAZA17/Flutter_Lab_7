import 'package:flutter/material.dart';
import 'package:lab7/first_screen.dart';
import 'package:lab7/second_screen.dart';
import 'package:lab7/third_screen.dart';

class TopNavigationHomeScreen extends StatefulWidget {
  const TopNavigationHomeScreen({super.key});

  @override
  State<TopNavigationHomeScreen> createState() =>
      _TopNavigationHomeScreenState();
}

class _TopNavigationHomeScreenState extends State<TopNavigationHomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Tab Navigation'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(icon: Icon(Icons.home), text: 'Home'),
            Tab(icon: Icon(Icons.message), text: 'Messages'),
            Tab(icon: Icon(Icons.person), text: 'Profile'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          FirstScreen(),
          SecondScreen(),
          ThirdScreen(),
        ],
      ),
    );
  }
}
