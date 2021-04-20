import 'package:flutter/material.dart';
import 'package:flutterexcercisesforcancerapp/widget/button.dart';
import 'package:flutterexcercisesforcancerapp/widget/first.dart';
import 'package:flutterexcercisesforcancerapp/widget/inputEmail.dart';
import 'package:flutterexcercisesforcancerapp/widget/password.dart';
import 'package:flutterexcercisesforcancerapp/widget/textLogin.dart';
import 'package:flutterexcercisesforcancerapp/widget/verticalText.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [const Color(0xFFff2e63), const Color(0xFFffc2c2)])),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(children: <Widget>[
                  VerticalText(),
                  TextLogin(),
                ]),
                InputEmail(),
                PasswordInput(),
                ButtonLogin(),
                FirstTime(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
