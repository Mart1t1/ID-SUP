import 'dart:convert';
import 'school.dart';

Map schoolMap = jsonDecode("../Resources/schoolData.json");
var schools = School.fromJson(schoolMap);

