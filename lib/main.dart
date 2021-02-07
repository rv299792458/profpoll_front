import 'package:flutter/material.dart';
import 'package:profpoll_front/Homepage.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:profpoll_front/Mobile/HomepageMobile.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: ScreenTypeLayout(
          desktop: Homepage(),
          tablet: Homepage(),
          mobile:HomepageMobile(),

      ),
    );
  }
}