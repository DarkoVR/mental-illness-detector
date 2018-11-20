import 'package:flutter/material.dart';
import 'package:mental_illness_detector/ui/home.dart';
import 'package:mental_illness_detector/util/strings.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: Strings.APP_NAME,
      theme: new ThemeData(primaryColor: Colors.white,),
      home: new Home(title: Strings.APP_NAME),
    );
  }
}