import 'package:flutter/material.dart';


class RadioButtonDemo extends StatefulWidget {
  var  value;
  RadioButtonDemo({required this.value});

  @override
  State<StatefulWidget> createState() {
    return RadioButtonDemoState(value);
  }
}
class RadioButtonDemoState extends State<RadioButtonDemo> {
  String selectedRadioValue = 'male';
  late String value;
  RadioButtonDemoState(this.value);
  

  void displaySelectedRadioValue() {
    print("Selected Radio Value: $selectedRadioValue");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Button Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RadioListTile(
              title: Text("male"),
              value: 'male',
              groupValue: selectedRadioValue,
              onChanged: (value){
                setState(() {
                  selectedRadioValue = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text('female'),
              value: 'female',
              groupValue: selectedRadioValue,
              onChanged: (value){
                setState(() {
                  selectedRadioValue = value.toString();
                });
              },
            ),


            SizedBox(height: 20),
            ElevatedButton(
              onPressed: displaySelectedRadioValue,
              child: Text('Show Selected Value'),
            ),

            SizedBox(height: 20),
            Text("result is $value")
          ],
        ),
      ),
    );
  }
}


