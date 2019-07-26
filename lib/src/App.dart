import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:ios_app/src/views/account/AccountPage.dart';
import 'package:ios_app/src/views/home/HomePage.dart';
import 'package:ios_app/src/views/message/MessagePage.dart';
import 'package:ios_app/src/views/settings/SettingsPage.dart';
import 'package:ios_app/src/theme/colors.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        HomePage(),
        MessagePage(),
        AccountPage(),
        SettingsPage(),
      ].elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: SEKSAColors.primary,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        fixedColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: new Icon(Feather.home),
            title: new Text(
              'ទំព័រដើម',
              style: TextStyle(fontSize: 12.0),
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Feather.message_circle),
            title: new Text(
              'ប្រអប់សារ',
              style: TextStyle(fontSize: 12.0),
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Feather.user),
            title: new Text(
              'គណនី',
              style: TextStyle(fontSize: 12.0),
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Feather.settings),
            title: new Text(
              'ការកំណត់',
              style: TextStyle(fontSize: 12.0),
            ),
          )
        ],
        onTap: _onBarItemTap,
      ),
    );
  }

  void _onBarItemTap(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}
