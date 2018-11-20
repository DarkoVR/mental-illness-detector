import 'package:flutter/material.dart';
import 'package:mental_illness_detector/ui/firstSection.dart';
import 'package:mental_illness_detector/ui/resultSection.dart';
import 'package:mental_illness_detector/ui/secondSection.dart';
import 'package:mental_illness_detector/ui/thirdSection.dart';

class Navigation{
  static void navigateToFirst(BuildContext context) =>
      Navigator.push(context, MaterialPageRoute(builder: (_) => FirstSection()));

  static void navigateToSecond(BuildContext context) =>
      Navigator.push(context, MaterialPageRoute(builder: (_) => SecondSection()));

  static void navigateToThird(BuildContext context) =>
      Navigator.push(context, MaterialPageRoute(builder: (_) => ThirdSection()));

  static void navigateToResult(BuildContext context) =>
      Navigator.push(context, MaterialPageRoute(builder: (_) => ResultSection()));

  static void popNavigation(context) => Navigator.of(context).pop(true);
}