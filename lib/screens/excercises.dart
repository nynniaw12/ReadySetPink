import 'package:flutter/material.dart';
import 'dart:math';
import 'Excercises_Days/Monday2.dart';

class ExcerciseWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text(
            'The exercises we are suggesting for the week:',
            style: TextStyle(color: Colors.grey[100], fontSize: 15),
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
          Monday2("Monday", 0),
          Monday2("Tuesday", 0),
          Monday2("Wednesday", 0),
          Monday2("Thursday", 0),
          Monday2("Friday", 0),
          Monday2("Saturday", 0),
          Monday2("Sunday", 0),
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
