import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'schools.dart';


// Fetch content from the json file
  Future<List<Schools>> readJson() async {

    final String response = await rootBundle.loadString('assets/schoolData.json');
    final data = await json.decode(response);
    List schools = data["ListofSchools"];
    return schools.map((entry) => Schools.fromJson(entry)).toList();
  }
