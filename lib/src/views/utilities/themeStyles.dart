import 'package:flutter/material.dart';
import './themeColors.dart';
import 'fontSize.dart';

class ThemeStyles {
  static TextStyle departureTextStyle = const TextStyle(
    color: Colors.white,
    fontSize: 25.0,
  );
  static TextStyle arrivalTextStyle = const TextStyle(
    color: Colors.white,
    fontSize: 40.0,
    fontWeight: FontWeight.w700,
  );
  static TextStyle travelDateTextStyle = const TextStyle(
    color: Colors.white,
    fontSize: 25.0,
    fontWeight: FontWeight.w100,
  );
  static TextStyle dropDownTextStyle = const TextStyle(
    color: Colors.black,
    fontSize: 20.0,
  );
  static TextStyle ticketPrice = TextStyle(
    color: ThemeColors.orange,
    fontSize: 35.0,
    fontWeight: FontWeight.w900,
  );
  static TextStyle greyStyle = const TextStyle(
    color: Colors.grey,
    fontSize: 15.0,
  );
  static TextStyle mainBlackTextStyle = const TextStyle(
    color: Colors.black,
    fontSize: 30.0,
  );
  static TextStyle subBlackTextStyle = const TextStyle(
    color: Colors.black,
    fontSize: 15.0,
  );
}





class MyStyle {
  static TextStyle textTitleBlack = TextStyle(
      color: MyColors.blackText,
      fontSize: MyFontSize.large2,
      fontWeight: FontWeight.bold);

  static TextStyle textParagraphBlack = TextStyle(
    color: MyColors.blackText,
    fontSize: MyFontSize.medium2,
  );
}