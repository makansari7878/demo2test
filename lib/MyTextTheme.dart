import 'package:flutter/material.dart';

class MyTextTheme{
  static TextTheme getTextTheme(BuildContext context){

    return TextTheme(
        labelLarge: TextStyle(fontSize: 20, color: Colors.blue),
        bodyMedium: TextStyle(fontSize: 25, color: Colors.amberAccent),
        titleLarge: TextStyle(fontSize: 40, color: Colors.redAccent),
    ).apply(
      fontFamily: "Roboto"
    );
  }
}