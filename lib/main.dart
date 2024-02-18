import 'package:demo2test/AxisScreen.dart';
import 'package:demo2test/BottomNavigationDemo.dart';
import 'package:demo2test/DropDown.dart';
import 'package:demo2test/HomeScreen.dart';
import 'package:demo2test/ListViewScreen.dart';
import 'package:demo2test/LoginScreen.dart';
import 'package:demo2test/MyTextTheme.dart';
import 'package:demo2test/RadioButtonDemo.dart';
import 'package:demo2test/SecondScreen.dart';
import 'package:flutter/material.dart';
import 'PopUpMenuDemol.dart';
import 'SharedPrefDemo.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      routes: {
        '/': (context) => TestScreen(),
        '/listviewscreen' : (context) => SharedPref(),

      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightGreen,
        fontFamily: 'Arial',
        scaffoldBackgroundColor: Colors.red,
        appBarTheme: AppBarTheme(color: Colors.redAccent),
        textTheme: MyTextTheme.getTextTheme(context),
        colorScheme: ColorScheme.fromSwatch().
        copyWith(secondary: Colors.deepOrange[200]),



      ),
      title: "My title",
      //home: SecondScreen()
    );
  }

}
