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

  final Future<dynamic> schools = ModelData().readJson();

  @override


  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ID SUP',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ID Sup'),
        ),
        body: Center(
          child: schoolRow(schoolinRow: schools[0]),
        ),
      ),
    );
  }
}

