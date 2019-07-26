import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String fullName;
  final String gender;
  final String phoneNumber;
  final String grade;
  final double score;
  final DocumentReference reference;

  User({
    this.fullName,
    this.gender,
    this.grade,
    this.phoneNumber,
    this.score,
    this.reference,
  });

  User.fromMap(Map<String, dynamic> map, {this.reference})
    : assert(map['fullName'] !=null),
      assert(map['gender'] !=null),
      assert(map['phoneNumber'] !=null),
      assert(map['grade'] !=null),
      assert(map['score']),
      fullName = map['fullName'],
      gender = map['gender'],
      grade = map['grade'],
      phoneNumber = map['phoneNumber'],
      score = map['score'];
  User.fromSnapshot(DocumentSnapshot snapshot)
    : this.fromMap(snapshot.data, reference: snapshot.reference);
}
