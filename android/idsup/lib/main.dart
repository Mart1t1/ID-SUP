import 'package:flutter/material.dart';
import 'Models/Modeldata.dart';
import 'Models/schools.dart';
import 'Views/school/schoolList.dart';


void main() {
  runApp(MyApp()
  );
}

class MyApp extends StatelessWidget {

  @override


  Widget build(BuildContext context) {
    return MaterialApp(
        // Hide the debug banner
        title: 'ID-SUP',
        home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

}
class _HomePageState extends State<HomePage> {
  List schools = [];

  // Fetch content from the json file
  Future<void> getSchools() async {
    List <Schools> school = await readJson();
    setState(() {
      schools = school;
    });
  }


  void initState()
  {
    getSchools();
    super.initState();
  }



  Widget build(BuildContext context) {
    return MaterialApp(
      

      home: 
      Scaffold(
        appBar: AppBar(title: const Text('ID SUP'),),
        body:   
          (schools.length > 0 ? schoolList(schools: schools) : Container(width: 0.0, height: 0.0))
      )
    );
  }


  }
