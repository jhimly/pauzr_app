import 'package:flutter/material.dart';
import 'landing.dart';
import 'timer10.dart';
import 'timer20.dart';
import 'timer30.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Indoor Asset Tracker',
      theme: ThemeData(
        //brightness: Brightness.light,
        primaryColor: Color(0xFF6D213D),
        accentColor: Color(0xFFDF3e7b),
        //backgroundColor: Color(0xff717476),
        scaffoldBackgroundColor: Color(0xF0E4E4E4),
        backgroundColor: Color(0xf1616161),
        //canvasColor: Color(0xFF6D213D),
        //canvasColor: Color(0xf1F50057),
        canvasColor: Color(0xf1616161),
        //canvasColor: Color(0xf1EEEEEE),

      ),
      home: LandingPage(),
      routes: {
        '/time1' : (context) => CountDownTimer(),
        '/time2' : (context) => TimerTwo(),
        '/time3' : (context) => TimerThree(),
      },
    );
  }
}
