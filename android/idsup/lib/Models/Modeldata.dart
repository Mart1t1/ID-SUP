import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'schools.dart';

class ModelData {



// Fetch content from the json file
  Future <dynamic> readJson() async {
    List schools = [];
    final String response = await rootBundle.loadString('../Resources/schoolData.json');
    final data = await json.decode(response);
    schools = data["ListofSchools"];

    return schools;
  }

}