import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:ios_app/src/components/CoursesList.dart';
import 'package:ios_app/src/theme/colors.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        children: <Widget>[
          SizedBox(
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            child: new Carousel(
              images: [
                new ExactAssetImage('assets/images/bg.png'),
                new ExactAssetImage('assets/images/carel19.jpg'),
                new ExactAssetImage('assets/images/carel12.jpg')
              ],
              dotSize: 5.0,
              dotSpacing: 15.0,
              dotColor: Colors.white,
              indicatorBgPadding: 2.0,
              dotBgColor: Colors.transparent,
              boxFit: BoxFit.cover
            ),
          ),
          Expanded(
            child: CoursesList(),
          ),
        ],
      ),
    );
  }
}
