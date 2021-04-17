import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  bool lockInBackground = true;
  bool notificationsEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ready, Set, Pink! Account'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: SettingsList(
            sections: [
              CustomSection(
                  child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Icon(Icons.account_circle, size: 150),
                ),
              )),
              SettingsSection(title: 'Personal info', tiles: [
                SettingsTile(title: 'Username'),
                SettingsTile(title: 'Password'),
                SettingsTile(title: 'Email', leading: Icon(Icons.email)),
                SettingsTile(title: 'Phone number', leading: Icon(Icons.phone)),
              ]),
            ],
          ),
        ));
  }
}
