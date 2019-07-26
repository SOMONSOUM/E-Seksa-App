import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:line_icons/line_icons.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Feather.align_left,
            size: 28,
          ),
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(LineIcons.bell, size: 28),
            onPressed: () => {
                  // TODOS
                },
          )
        ],
        // backgroundColor: Colors.transparent,
        title: Text(
          'SEKSA',
          style: TextStyle(
              fontFamily: 'NeoSansBold',
              fontSize: 24,
              fontWeight: FontWeight.w800),
        ));
  }
}
