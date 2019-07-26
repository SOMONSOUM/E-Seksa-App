import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ios_app/src/App.dart';
import 'package:ios_app/src/constant/Constant.dart';
import 'package:ios_app/src/theme/colors.dart';
import 'package:ios_app/src/views/splashsreen/SplashPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SEKSA',
      theme: ThemeData(
        fontFamily: 'Kantumruy',
        primaryColor: SEKSAColors.primary,
        accentColor: SEKSAColors.primary,
      ),
      home: SplashPage(),
      routes: <String, WidgetBuilder>{
        homePage: (BuildContext context) => new App(),
      },
    );
  }
}
