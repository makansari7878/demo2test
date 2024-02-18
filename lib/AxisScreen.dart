import 'package:flutter/material.dart';

class AxisScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AXIS SCREEN"),),
      body: Material(

        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.amberAccent,
                width: 100,
                height: 100,
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.blueAccent,
                width: 100,
                height: 200,
              ),
              Container(

                margin: EdgeInsets.all(10),
                color: Theme.of(context).colorScheme.secondary,
                width: 100,
                height: 300,
              ),
            ],
          ),
        ),
      )
    );
  }

}