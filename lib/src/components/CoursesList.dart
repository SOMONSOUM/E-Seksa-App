import 'package:flutter/material.dart';
import 'package:ios_app/src/models/Course.dart';
import 'package:ios_app/src/views/courses/CourseDetailsPage.dart';
import 'package:ios_app/src/theme/colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CoursesList extends StatefulWidget {
  @override
  _CoursesListState createState() => _CoursesListState();
}

class _CoursesListState extends State<CoursesList> {
  @override
  Widget build(BuildContext context) {
    return _buildBody(context);
  }

  Widget _buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('courses').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData)
          return Center(
            child: SpinKitThreeBounce(
              color: SEKSAColors.primary,
              size: 30.0,
            ),
          );

        return _buildList(context, snapshot.data.documents);
      },
    );
  }

  Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
    return ListView(
      padding: const EdgeInsets.only(top: 20.0),
      children: snapshot.map((data) => _buildListItem(context, data)).toList(),
    );
  }

  Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
    final course = Course.fromSnapshot(data);
    return Padding(
      key: ValueKey(course.name),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.white,
              offset: new Offset(2.0, 5.0),
              blurRadius: 10.0,
            ),
          ],
          border: Border.all(color: SEKSAColors.primary),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: ListTile(
          onTap: () => Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.fade,
                  child: CourseDetailsPage(course: course))),
          isThreeLine: true,
          title: Text(
            course.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          leading: CircleAvatar(
            radius: 40,
            child: Image.network(course.courseIcon),
            backgroundColor: Colors.transparent,
          ),
          subtitle: Text(
            course.description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
