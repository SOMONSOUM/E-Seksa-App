import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:ios_app/src/theme/colors.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SEKSAColors.grey200,
      key: _scaffoldKey,
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
                        radius: 8,
                        backgroundColor: Colors.red,
                      ),
                    ),
                  ],
                ),
                onPressed: () => {}),
            IconButton(
              icon: Icon(
                Feather.help_circle,
                size: 22,
              ),
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
            child: Text('ទំព័រសាររបស់ខ្ញុំ'),
          )
        ],
      ),
    );
  }
}
