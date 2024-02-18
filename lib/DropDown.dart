import 'package:flutter/material.dart';

// 1. Dropdown  2. Selectable

class DropDown extends StatefulWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  var cities = ['bangalore', 'mangalore','delhi','raichur'];
  var firstCity = 'bangalore';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DROP DOWN"), backgroundColor: Colors.limeAccent,),
      body: SafeArea(
        child: Center(
          child:Column(

            children: [
              Row(
                children: [
                  DropdownButton<String>(
                    dropdownColor: Colors.cyanAccent,
                    items: cities.map((String dropdownStringItem) {
                      return DropdownMenuItem(
                          value: dropdownStringItem,
                          child: Text(dropdownStringItem));
                    }).toList(),
                    onChanged: (String? newUserValue){
                      setState(() {
                        this.firstCity = newUserValue!;
                      });
                    },
                    value: firstCity,
                  )
                ],
              ),
              SizedBox(height: 20,),
              Row(children: [
                Text("Selected value is $firstCity")
              ],),
              SizedBox(height: 30,),
              Row(
                children: [
                  Expanded(
                      child: SelectableText(
                        "These training courses have been developed and calibrated by  team of Android experts for some years. These courses empower",
                        style: TextStyle(fontSize: 20.0),
                        showCursor: true,
                        cursorColor: Colors.blue,
                        cursorWidth: 20,
                      )),
                ],
              ),


            ],
          ),


        ),
      ),
    );
  }
}


