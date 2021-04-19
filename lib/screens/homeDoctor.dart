import 'package:flutter/material.dart';
import 'package:flutterexcercisesforcancerapp/screens/DoctorScreens/patientsWidgetDoctor.dart';
import 'Settings.dart';
import 'Account.dart';
import 'Login.dart';
import 'package:flutterexcercisesforcancerapp/profile/components/body.dart';

class HomeDoctor extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeDoctorState();
  }
}

class _HomeDoctorState extends State<HomeDoctor> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Body(),
    PatientsWidget(),
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [const Color(0xFFCF268A), const Color(0xFFFB8CAB)])),
        child: _children[_currentIndex],
      ), // new
      backgroundColor: const Color(0xFFd74894),
      drawer: Container(
          width: 250,
          child: Drawer(
              // Add a ListView to the drawer. This ensures the user can scroll
              // through the options in the drawer if there isn't enough vertical
              // space to fit everything.
              child: ListView(
                  // Important: Remove any padding from the ListView.
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                Container(
                  height: 150,
                  child: DrawerHeader(
                    child: Padding(
                        padding: EdgeInsets.only(top: 25),
                        child: Text(
                          'Welcome Again!',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )),
                    decoration: BoxDecoration(
                      color: Colors.pink[500],
                    ),
                  ),
                ),
                ListTile(
                  title: Row(
                    children: [
                      Icon(Icons.account_box),
                      Padding(padding: EdgeInsets.only(right: 10)),
                      Text('Account'),
                    ],
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Account()),
                    );
                  },
                ),
                ListTile(
                  title: Row(
                    children: [
                      Icon(Icons.settings),
                      Padding(padding: EdgeInsets.only(right: 10)),
                      Text('Settings'),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Settings()),
                    );
                  },
                ),
                ListTile(
                  title: Row(
                    children: [
                      Icon(Icons.logout),
                      Padding(padding: EdgeInsets.only(right: 10)),
                      Text('Sign Out'),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                ),
              ]))),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.pink[200],
        backgroundColor: Colors.grey[900],
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Home'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.people_alt),
            title: Text('Patients'),
          ),
        ],
      ),
    );
  }
}
