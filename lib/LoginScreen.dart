import 'package:demo2test/RadioButtonDemo.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return LoginScreenState();
  }

}

class LoginScreenState extends State<LoginScreen>{
  var username = "";
  TextEditingController inputUsername = TextEditingController();
  void myProcessText(){
    setState(() {
      username = inputUsername.text;
      Navigator.of(context).push(
          MaterialPageRoute(builder:
              (context)=> RadioButtonDemo(value :username)));
    });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LOGIN SCREEN"),),
      body: Container(
        color: Colors.lightGreen,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                    child: TextField(
                      controller: inputUsername,
                    )),
              ],
            ),

            SizedBox(height:30 ,),
            ElevatedButton(
                onPressed:myProcessText,
                child: Text("SUBMIT")),
            SizedBox(height:30 ,),
            Text("your username is $username",
              style: TextStyle(fontSize: 20, color: Colors.red),)
          ],
        ),
      ),
    );
  }

}