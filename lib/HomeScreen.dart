import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HOME SCREEN"),
        backgroundColor: Colors.amber,),

      body: Material(
        color: Colors.blueAccent,
        child: Center(
          child:Text(
            "my lucky number is ${myMathFunction()}",
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.amberAccent, fontSize: 25),
          ),
        ),
      ),
    );
  }


   int myMathFunction(){
    var random = Random();
    var number = random.nextInt(100);
    return number;
  }

}