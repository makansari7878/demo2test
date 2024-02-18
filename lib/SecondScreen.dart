import 'package:demo2test/AxisScreen.dart';
import 'package:demo2test/ListViewScreen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SecondScreen extends StatelessWidget{

  showToast(){
    Fluttertoast.showToast(
        msg: "THIS IS A TOAST",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.amberAccent,
        textColor: Colors.red,
        fontSize: 15
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: const  Text("SCEOND SCREEN"),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 10, top: 25),
        alignment: Alignment.center,
        color: Colors.greenAccent,
        child: Column(
          children: [
            Row(
              children: [
                Text("Hello Ansari",
                style: Theme.of(context).textTheme.labelLarge, ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
               Expanded(child:  Text("Welcome to Flutter, How are you doing today Ansari",
                 style: Theme.of(context).textTheme.labelLarge,),)
              ],
            ),
            SizedBox(height: 40,),
            Row(
              children: [
                 Image.asset("images/abc.png", height: 200, width: 200,)
              ],
            ),
            SizedBox(height: 40,),
            Row(
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ListViewScreen()));
                  //   Navigator.pushRNamed(context, "/listviewscreen");

                  // showDialog(context: context, builder: (ctx) =>
                  // AlertDialog(
                  //   title: Text("MY ALERT !!"),
                  //   content: Text("Are you Ok ?"),
                  //   actions: [
                  //     TextButton(onPressed: showToast, child: Text("YES"))
                  //   ],
                  // ),
                  //
                  // );

                }, child: Text("CLICK ME")),
              ],
            ),
            SizedBox(height: 40,),



          ],
        ),
      ),

    );
  }

}