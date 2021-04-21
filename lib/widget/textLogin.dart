import 'package:flutter/material.dart';

class TextLogin extends StatefulWidget {
  @override
  _TextLoginState createState() => _TextLoginState();
}

class _TextLoginState extends State<TextLogin> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Text(
        'READY,\nSET,\nPINK!',
        //textHeightBehavior: TextHeightBehavior(leadingDistribution: TextLeadingDistribution.even),
        style: TextStyle(
          height: 1,
          fontFamily: 'Barlow',
          fontSize: 64,
          color: Color(0xFFff2e63),
        ),
      ),
    );
  }
}
