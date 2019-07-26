import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:ios_app/src/theme/colors.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SEKSAColors.grey200,
      appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          leading: IconButton(
            onPressed: () => {},
            icon: Icon(
              Feather.log_out,
              size: 22,
            ),
          ),
          actions: <Widget>[
            IconButton(
                icon: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Feather.bell,
                        size: 22,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                        radius: 7,
                        backgroundColor: Colors.red,
                      ),
                    ),
                  ],
                ),
                onPressed: () => {}),
            IconButton(
              icon: Icon(Feather.help_circle),
              onPressed: () {},
            )
          ],
          // backgroundColor: Colors.transparent,
          title: Text(
            'E-SEKSA',
            style: TextStyle(
                fontFamily: 'NeoSansBold',
                fontSize: 24,
                fontWeight: FontWeight.w800),
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text('ទំព័រកំណត់'),
          )
        ],
      ),
    );
  }
}
