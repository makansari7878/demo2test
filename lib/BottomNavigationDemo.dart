import 'package:demo2test/HomeScreen.dart';
import 'package:demo2test/ListViewScreen.dart';
import 'package:flutter/material.dart';
import 'package:demo2test/LoginScreen.dart';

class BottomNavigationDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomNavigationDemoState();
  }
}

class BottomNavigationDemoState extends State<BottomNavigationDemo> {
  int myCurrentIndex = 0;
  final tabs = [
    HomeScreen(),
    ListViewScreen(),
    Center(child: Text("Security",style: TextStyle(fontSize: 25))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[myCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: myCurrentIndex,
        iconSize: 30,
        selectedFontSize: 20,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Colors.cyan,
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            backgroundColor: Colors.cyan,
            label: "List",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.security),
            backgroundColor: Colors.cyan,
            label: "Security",
          ),
        ],
        onTap: (index) {
          setState(() {
            myCurrentIndex = index;
          });
        },
      ),
    );
  }
}
