import 'package:flutter/material.dart';

import 'dart:convert';

import 'Models/Modeldata.dart';
import 'Models/schools.dart';
import 'Views/school/schoolRow.dart';


void main() {
  runApp(MyApp(schools: Schools.fromJson(ModelData().loadFromAsset()),)
  );
}

class MyApp extends StatelessWidget {

  final Schools schools;

  const MyApp({Key key, this.schools}) : super(key: key);

  @override


  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ID SUP',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ID Sup'),
        ),
        body: Center(
          child: Text('dfs'),//schoolRow(schoolinRow: schools.schools[0]),
        ),
      ),
    );
  }
}

