import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool lockInBackground = true;
  bool notificationsEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ready, Set, Pink! Settings'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: SettingsList(
            sections: [
              CustomSection(
                  child: Padding(
                padding: EdgeInsets.only(top: 25),
              )),
              SettingsSection(
                title: 'Common',
                tiles: [
                  SettingsTile(
                    title: 'Language',
                    subtitle: 'English',
                    leading: Icon(Icons.language),
                    onPressed: (context) {},
                  ),
                  SettingsTile(
                    title: 'Environment',
                    subtitle: 'Production',
                    leading: Icon(Icons.cloud_queue),
                  ),
                ],
              ),
              SettingsSection(
                title: 'Security',
                tiles: [
                  SettingsTile.switchTile(
                    title: 'Lock app in background',
                    leading: Icon(Icons.phonelink_lock),
                    switchValue: lockInBackground,
                    onToggle: (bool value) {
                      setState(() {
                        lockInBackground = value;
                        notificationsEnabled = value;
                      });
                    },
                  ),
                  SettingsTile.switchTile(
                    title: 'Enable Notifications',
                    enabled: notificationsEnabled,
                    leading: Icon(Icons.notifications_active),
                    switchValue: true,
                    onToggle: (value) {},
                  ),
                ],
              ),
              SettingsSection(
                title: 'Misc',
                tiles: [
                  SettingsTile(
                      title: 'Terms of Service',
                      leading: Icon(Icons.description)),
                  SettingsTile(
                      title: 'Open source licenses',
                      leading: Icon(Icons.collections_bookmark)),
                ],
              ),
              CustomSection(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 22, bottom: 8),
                    ),
                    Text(
                      'Version: 0.0.1',
                      style: TextStyle(color: Color(0xFF777777)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
