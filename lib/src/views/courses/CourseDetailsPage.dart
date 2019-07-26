import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:ios_app/src/models/Course.dart';
import 'package:ios_app/src/theme/colors.dart';

class CourseDetailsPage extends StatefulWidget {
  final Course course;
  CourseDetailsPage({Key key, @required this.course}) : super(key: key);

  @override
  _CourseDetailsPageState createState() => _CourseDetailsPageState();
}

class _CourseDetailsPageState extends State<CourseDetailsPage> {
  @override
  Widget build(BuildContext context) {
    var course = widget.course;
    return Scaffold(
      backgroundColor: SEKSAColors.grey200,
      appBar: AppBar(
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Feather.help_circle),
              onPressed: () {},
            )
          ],
          title: Text(
            course.name,
            style: TextStyle(
              fontFamily: 'Kantumruy',
              fontSize: 22,
            ),
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(course.name),
          )
        ],
      ),
    );
  }
}
