import 'package:flutter/material.dart';

class TextLogin extends StatefulWidget {
  @override
  _TextLoginState createState() => _TextLoginState();
}

class _TextLoginState extends State<TextLogin> {
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
