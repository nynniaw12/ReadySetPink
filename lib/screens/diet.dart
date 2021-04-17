import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutterexcercisesforcancerapp/constants.dart';
import 'package:expandable/expandable.dart';
import 'Diet_Days/Monday.dart';

class DietWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text(
            'The diet we are suggesting for the week:',
            style: TextStyle(color: Colors.grey[100], fontSize: 16),
          ),
          // Allows the user to reveal the app bar if they begin scrolling back
          // up the list of items.
          floating: true,
          // Make the initial height of the SliverAppBar larger than normal.
          expandedHeight: 50,
        ),
        SliverList(
            // Use a delegate to build items as they're scrolled on screen.
            delegate: SliverChildListDelegate([
          Monday("Monday", 0),
          Monday("Tuesday", 0),
          Monday("Wednesday", 0),
          Monday("Thursday", 0),
          Monday("Friday", 0),
          Monday("Saturday", 0),
          Monday("Sunday", 0),
        ]))
      ],
    ));
  }
}

class UniqueColorGenerator {
  static Random random = new Random();
  static Color getColor() {
    return Color.fromARGB(
        255, random.nextInt(255), random.nextInt(255), random.nextInt(255));
  }
}
