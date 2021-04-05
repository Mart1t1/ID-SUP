import 'package:flutter/material.dart';

import 'dart:convert';

import 'Models/Modeldata.dart';
import 'Models/schools.dart';
import 'Views/school/schoolRow.dart';


void main() {
  runApp(MyApp()
  );
}

class MyApp extends StatelessWidget {

  @override


  Widget build(BuildContext context) {
    return MaterialApp(
        // Hide the debug banner
        title: 'test',
        home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

}
class _HomePageState extends State<HomePage> {
  List schoolList = [];

  // Fetch content from the json file
  Future<void> getSchools() async {
    List school = await readJson();
    setState(() {
      schoolList = school;
    });
  }


  void initState()
  {
    getSchools();
    super.initState();
  }



  Widget build(BuildContext context) {
    return
      Column(
            children: <Widget>
        [
              //schoolRow(schoolinRow: schoolList[0]),
              Container(width: 0.0, height: 0.0),
        ]
        );
  }

  }
