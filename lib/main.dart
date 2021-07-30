import 'package:flutter/material.dart';
import 'package:showcase_water_tracker_prep/home_page.dart';
import 'package:showcaseview/showcaseview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Water Tracker',
      home: ShowCaseWidget(
        builder: Builder(
          builder: (context) => HomePage(),
        ),
      ),
    );
  }
}
