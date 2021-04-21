import 'package:flutter/material.dart';
import 'package:flutterexcercisesforcancerapp/screens/home.dart';
import 'package:flutterexcercisesforcancerapp/screens/homeDoctor.dart';
import 'package:flutterexcercisesforcancerapp/widget/inputEmail.dart';
import 'package:flutterexcercisesforcancerapp/widget/password.dart';

class ButtonLogin extends StatefulWidget {
  @override
  _ButtonLoginState createState() => _ButtonLoginState();
}

class _ButtonLoginState extends State<ButtonLogin> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, right: 50, left: 50),
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.pink[200],
              blurRadius: 10.0, // has the effect of softening the shadow
              spreadRadius: 1.0, // has the effect of extending the shadow
              offset: Offset(
                5.0, // horizontal, move right 10
                5.0, // vertical, move down 10
              ),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: TextButton(
          onPressed: () {
            if (enteredTextLogin == "patient" && enteredTextPass == "pass") {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            }
            if (enteredTextLogin == "doctor" && enteredTextPass == "pass") {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeDoctor()));
            } else {}
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'OK',
                style: TextStyle(
                  color: Colors.pinkAccent,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.pinkAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
