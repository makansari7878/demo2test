import 'package:demo2test/LoginScreen.dart';
import 'package:flutter/material.dart';


class TestScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return TestScreenState();
  }

}

class TestScreenState extends State<TestScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TEST SCREEN"),
        actions: [
          PopupMenuButton<String>(

            onSelected: (String result) {
              if (result == "login"){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> LoginScreen()));
              }
              print('Selected: $result');
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'login',
                child: Text('LOGIN'),
              ),
              PopupMenuItem<String>(
                value: 'aboutus',
                child: Text('ABOUT US'),
              ),
              PopupMenuItem<String>(
                value: 'logout',
                child: Text('Logout'),
              ),
            ],
          ),
        ],
      ),
      body: Material(
          color: Colors.greenAccent,
          child: Center(
            child: Container(child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 350,
                  width: 350,
                  color: Colors.amberAccent,
                ),
                Container(
                  width: 100,
                  height: 100,

                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage('https://picsum.photos/250?image=9'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // The badge

              ],
            ),),
          )
      ),
    );
  }

}

