import 'package:flutter/material.dart';
import 'package:flutterexcercisesforcancerapp/screens/homeWidget.dart';
import 'excercises.dart';
import 'diet.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 1;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.deepOrange),
    HomeWidget(),
    DietWidget()
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.pink[200],
        backgroundColor: Colors.black54,
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            title: Text('Excercises'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Home'),
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.food_bank), title: Text('Diet'))
        ],
      ),
    );
  }
}
