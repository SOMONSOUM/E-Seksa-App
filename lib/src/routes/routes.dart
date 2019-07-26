import 'package:flutter/material.dart';
import 'package:ios_app/src/views/authentications/SigninPage.dart';
import 'package:ios_app/src/views/authentications/SignupPage.dart';
import 'package:ios_app/src/views/home/HomePage.dart';

final routes = {
  '/login': (BuildContext context) => new SigninPage(),
  '/signup': (BuildContext context) => new SignupPage(),
  '/home': (BuildContext context) => new HomePage(),
};