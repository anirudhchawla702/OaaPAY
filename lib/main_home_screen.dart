import 'package:flutter/material.dart';

import './CashBack.dart';
import './StartingHome.dart';
import './Surveys.dart';
import './Task.dart';
import './ads.dart';

class MainHomeScreen extends StatefulWidget {
  @override
  _MainHomeScreenState createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    StartingHome(),
    CashBack(),
    Task(),
    Surveys(),
    Ads(),
  ];

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: Container(
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                spreadRadius: 2,
                blurRadius: 10,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              onTap: onTabTapped,
              currentIndex: _currentIndex,
              selectedItemColor: Colors.purple,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  title: Text(
                    'Home',
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  title: Text(
                    'Cashback',
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.access_alarm,
                  ),
                  title: Text(
                    'Tasks',
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.business,
                  ),
                  title: Text(
                    'Surveys',
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.school,
                  ),
                  title: Text(
                    'Ads',
                  ),
                ),
              ],
            ),
          ),
        ),
        body: _children[_currentIndex],
//
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
