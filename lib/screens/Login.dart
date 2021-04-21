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
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                    VerticalText(),
                    TextLogin(),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: InputEmail(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: PasswordInput(),
                ),
                ButtonLogin(),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: FirstTime(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
