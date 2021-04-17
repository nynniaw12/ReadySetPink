import 'package:flutter/material.dart';

class TextNew extends StatefulWidget {
  @override
  _TextNewState createState() => _TextNewState();
}

class _TextNewState extends State<TextNew> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, left: 20.0),
      child: Container(
        //color: Colors.green,
        height: 200,
        width: 300,
        child: Column(
          children: <Widget>[
            Container(
              height: 45,
            ),
            Center(
              child: Text(
                'READY, SET, PINK!',
                style: TextStyle(
                  fontFamily: 'Barlow',
                  fontSize: 64,
                  color: Colors.pink[500],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
