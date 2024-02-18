import 'package:flutter/material.dart';

import 'DropDown.dart';

class ListViewScreen extends StatelessWidget {
  List<String> getListItems() {
    var items = List<String>.generate(1000, (index) => "This number is $index");
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LIST VIEW"),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                  Colors.pinkAccent,
                  Colors.orangeAccent,
                  Colors.purple
                ]),
          ),
        ),
      ),
      body: getDynamicishList(),
    );
  }

  Widget getDynamicishList() {
    var listItems = getListItems();
    return Center(
      child: Container(
        color: Colors.green,
        child: ListView.builder(
          itemCount: listItems.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context)=> DropDown()));
              },
              child: Card(
                elevation: 10,
                shape: StadiumBorder(),
                shadowColor: Colors.blueAccent,
                color: index % 2 == 0 ? Colors.pink : Colors.orange,
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("${listItems[index]}"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
