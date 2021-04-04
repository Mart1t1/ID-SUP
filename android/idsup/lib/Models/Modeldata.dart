import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'schools.dart';
class ModelData {


  Future<String> loadFromAsset() async {
    return await rootBundle.loadString('../Resources/schoolData.json');
  }

}