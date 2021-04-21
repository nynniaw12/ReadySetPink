import 'package:flutter/material.dart';
import 'package:flutter_local_notifications_platform_interface/flutter_local_notifications_platform_interface.dart';
import 'package:flutterexcercisesforcancerapp/screens/homeWidget.dart';
import 'excercises.dart';
import 'diet.dart';
import 'Settings.dart';
import 'Account.dart';
import 'Login.dart';
import 'dart:async';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:ff_navigation_bar/ff_navigation_bar_theme.dart';
import 'calendar.dart';
//import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  FlutterLocalNotificationsPlatform flutterLocalNotificationsPlatform;
  //FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  Timer _timer;
  bool visibilityMot = true;
  bool visibilityMot2 = true;

  int _currentIndex = 1;

  final List<Widget> _children = [
    ExcerciseWidget(),
    HomeWidget(),
    DietWidget(),
    CalendarWidget(),
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();

    /*flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
    var android = new AndroidInitializationSettings('@mipmap/ic_launcher');
    var iOS = new IOSInitializationSettings();
    var initSetttings = new InitializationSettings(android, iOS);
    flutterLocalNotificationsPlugin.initialize(initSetttings,
        onSelectNotification: onSelectNotification);*/

    visibilityMot2 = true;
    visibilityMot = true;

    Future.delayed(Duration(milliseconds: 2500), () {
      setState(() {
        visibilityMot = false;
      });
      Future.delayed(Duration(milliseconds: 500), () {
        setState(() {
          visibilityMot2 = false;
        });
      });
    });
    showNotification();
  }

  Future onSelectNotification(String payload) {
    debugPrint("payload : $payload");
    showDialog(
      context: context,
      builder: (_) => new AlertDialog(
        title: new Text('Notification'),
        content: new Text('$payload'),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                  const Color(0xFFff2e63),
                  const Color(0xFFffc2c2)
                ])),
            //color: const Color(0xFF010a43) /*Colors.grey[900]*/,
            child: _children[_currentIndex],
          ), // new
          backgroundColor: const Color(0xFFd74894),
          drawer: Container(
              width: 250,
              child: Drawer(
                  // Add a ListView to the drawer. This ensures the user can scroll
                  // through the options in the drawer if there isn't enough vertical
                  // space to fit everything.
                  child: Container(
                color: Color(0xFF010a43),
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
                            color: Color(0xFFff2e63),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                      ),
                    ]),
              ))),
          bottomNavigationBar: FFNavigationBar(
            theme: FFNavigationBarTheme(
              barBackgroundColor: Colors.grey[900],
              selectedItemBorderColor: Color(0xFF5D0170),
              selectedItemBackgroundColor: Color(0xFFff2e63),
              selectedItemIconColor: Colors.white,
              selectedItemLabelColor: Colors.white,
            ),
            selectedIndex: _currentIndex,
            onSelectTab: onTabTapped,
            items: [
              FFNavigationBarItem(
                iconData: Icons.fitness_center,
                label: 'Excercises',
              ),
              FFNavigationBarItem(
                iconData: Icons.favorite,
                label: 'Home',
              ),
              FFNavigationBarItem(
                iconData: Icons.food_bank,
                label: 'Diet',
              ),
              FFNavigationBarItem(
                iconData: Icons.calendar_today,
                label: 'Calendar',
              )
            ],
          ),
          /*BottomNavigationBar(
            selectedItemColor: Colors.pink[200],
            backgroundColor: Colors.grey[900],
            onTap: onTabTapped, // new
            currentIndex: _currentIndex, // new
            items: [
              new BottomNavigationBarItem(
                icon: Icon(Icons.fitness_center),
                title: Text('Excercises'),
              ),
              new BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                title: Text('Home'),
              ),
              new BottomNavigationBarItem(
                  icon: Icon(Icons.food_bank), title: Text('Diet'))
            ],
          ),*/
        ),
        Visibility(
            visible: visibilityMot2,
            child: AnimatedOpacity(
              opacity: visibilityMot ? 1.0 : 0.0,
              duration: Duration(milliseconds: 500),
              child: Stack(
                children: [
                  Container(
                    color: Colors.black.withOpacity(0.75),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Try to embrace life’s ups and downs, harnessing your power to heal",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          decoration: TextDecoration.none),
                    ),
                  ),
                ],
              ),
            ))
      ],
    );
  }

  showNotification() async {
    /*var android = new AndroidNotificationDetails(
        'channel id', 'channel NAME', 'CHANNEL DESCRIPTION',
        priority: Priority.High, importance: Importance.Max);
    var iOS = new IOSNotificationDetails();
    var platform = new NotificationDetails(android, iOS);
    await flutterLocalNotificationsPlugin.show(
        0, 'New Tutorial', 'Local Notification', platform,
        payload: 'AndroidCoding.in');*/

    flutterLocalNotificationsPlatform.show(
        0, 'New Tutorial', 'Local Notification');
  }
}
