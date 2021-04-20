import 'package:flutter/material.dart';
import 'package:flutterexcercisesforcancerapp/screens/Login.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text('Home',
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.grey[100], fontSize: 18)),
          // Allows the user to reveal the app bar if they begin scrolling back
          // up the list of items.
          floating: true,
          // Make the initial height of the SliverAppBar larger than normal.
          expandedHeight: 50,
        ),
        SliverList(
            // Use a delegate to build items as they're scrolled on screen.
            //
            delegate: SliverChildListDelegate([
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
          ),
          Column(children: [
            ProfilePic(),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Container(
                          height: 1.0,
                          width: 100.0,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Text(
                          "Name Surname",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: 1.0,
                          width: 100,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )),
            ),
            ProfileMenu(
              text: "My Account",
              icon: "assets/icons/User Icon.svg",
              press: () => {},
            ),
            ProfileMenu(
              text: "Notifications",
              icon: "assets/icons/Bell.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Settings",
              icon: "assets/icons/Settings.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Help Center",
              icon: "assets/icons/Question mark.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Log Out",
              icon: "assets/icons/Log out.svg",
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
          ])
        ]))
      ],
    ));
  }
}
