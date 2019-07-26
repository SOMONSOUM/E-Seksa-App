import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:ios_app/src/views/courses/CoursesPage.dart';
import 'package:ios_app/src/views/message/MessagePage.dart';
import 'package:ios_app/src/views/settings/SettingsPage.dart';
import 'package:ios_app/src/theme/colors.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: new ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        new Container(
          height: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage('assets/drawer.jpeg'),
                  fit: BoxFit.cover)),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
        ),
        ListTile(
          leading: Icon(
            Feather.home,
            size: 22,
          ),
          title: Text('ទំព័រដើម'),
          onTap: () => Navigator.pop(context),
        ),
        ListTile(
          leading: Icon(
            Feather.grid,
            size: 22,
          ),
          title: Text('មេរៀន'),
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => CoursesPage())),
        ),
        ListTile(
          leading: Icon(
            Feather.message_circle,
            size: 22,
          ),
          title: Text('ប្រអប់សារ'),
          trailing: Chip(
            label: Text('5',
                style: TextStyle(
                    fontFamily: 'NeoSans',
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            backgroundColor: SEKSAColors.danger,
          ),
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => MessagePage())),
        ),
        ListTile(
          leading: Icon(
            Feather.settings,
            size: 22,
          ),
          title: Text('ការកំណត់'),
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => SettingsPage())),
        ),
      ],
    ));
  }
}
