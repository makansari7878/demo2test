import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SharedPref extends StatefulWidget {
  @override
  SharedPrefState createState() => SharedPrefState();
}

class SharedPrefState extends State<SharedPref> {
  TextEditingController text_controller = TextEditingController();
  String savedText = '';

  @override
  void initState() {
    super.initState();
    loadSavedData();
  }

 loadSavedData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
     savedText = prefs.getString('savedKey') ?? '';
    });
  }

  saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('savedKey', text_controller.text);
    loadSavedData();
    text_controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preferences Example'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: text_controller,
              decoration: InputDecoration(labelText: 'Enter text'),
            ),
            SizedBox(height: 25,),
            ElevatedButton(
              onPressed: saveData,
              child: Text('Save'),
            ),
            SizedBox(height: 20),
            Text(
              'Saved Text: $savedText',
              style: TextStyle(fontSize: 20 , color: Colors.yellowAccent),
            ),
          ],
        ),
      ),
    );
  }
}
