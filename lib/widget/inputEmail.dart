import 'package:flutter/material.dart';

class InputEmail extends StatefulWidget {
  @override
  _InputEmailState createState() => _InputEmailState();
}

String enteredTextLogin;

class _InputEmailState extends State<InputEmail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: TextField(
        cursorColor: Colors.white,
        onChanged: (newText) {
          enteredTextLogin = newText;
        },
        style: TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          
          border: InputBorder.none,
          fillColor: Colors.lightBlueAccent,
          labelText: 'Username',
          labelStyle: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
