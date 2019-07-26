// import 'dart:convert';

// import 'package:http/http.dart' as http;
// import 'package:ios_app/src/resources/api_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Course {
  final String name;
  final String description;
  final String courseIcon;
  final DocumentReference reference;

  Course({
    this.name,
    this.description,
    this.reference,
    this.courseIcon,
  });

  Course.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['name'] != null),
        assert(map['courseIcon'] != null),
        assert(map['description'] != null),
        name = map['name'],
        courseIcon = map['courseIcon'],
        description = map['description'];
  Course.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "Record<$name:$description:$courseIcon>";

  // Course({this.title, this.description, this.reference});

  // factory Course.fromJson(Map<String, dynamic> json) {
  //   return Course(
  //     title: json['title'],
  //     description: json['description'],
  //   );
  // }

  // static Future<List<Course>> browse() async {
  //   http.Response response = await http.get(ApiProvider.urlPrefix);

  //   String content = response.body;

  //   List collection = json.decode(content);
  //   List<Course> _courses =
  //       collection.map((json) => Course.fromJson(json)).toList();
  //   return _courses;
  // }
}
