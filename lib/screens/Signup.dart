import 'package:flutter/material.dart';
import 'package:flutterexcercisesforcancerapp/widget/buttonNewUser.dart';
import 'package:flutterexcercisesforcancerapp/widget/newEmail.dart';
import 'package:flutterexcercisesforcancerapp/widget/newName.dart';
import 'package:flutterexcercisesforcancerapp/widget/password.dart';
import 'package:flutterexcercisesforcancerapp/widget/singup.dart';
import 'package:flutterexcercisesforcancerapp/widget/textNew.dart';
import 'package:flutterexcercisesforcancerapp/widget/userOld.dart';

class NewUser extends StatefulWidget {
  @override
  _NewUserState createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [const Color(0xFFCF268A), const Color(0xFFFB8CAB)]),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SingUp(),
                    TextNew(),
                  ],
                ),
                NewNome(),
                NewEmail(),
                PasswordInput(),
                ButtonNewUser(),
                UserOld(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
