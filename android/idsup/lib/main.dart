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
        home: HomePage(selected: null,),
    );
  }
}
class HomePage extends StatefulWidget {
  List<bool> selected;

  HomePage({Key key, this.selected});
  @override
  _HomePageState createState() => _HomePageState(selected: selected);

}
class _HomePageState extends State<HomePage> {
  List schools =[];
  List<bool> selected;

  _HomePageState({Key key, this.selected});



  // Fetch content from the json file
  Future<void> getSchools() async {
    List <Schools> school = await readJson();
    setState(() {
      schools = school;
      
    }
    );
  }


  void initState()
  {
    getSchools();

    super.initState();

  }

  List <bool> initsel(List <Schools> schools)
  {
    List <bool> selected = [];
      for(int i = 0 ; i < getMajors(schools).length; i++)
        selected.add(false);
    return selected;
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      

      home: 
      Scaffold(
        appBar: AppBar(title: const Text('ID SUP'),),
        body:   
          (schools.length > 0 ? schoolList(schools: schools, selected: (selected == null ? initsel(schools) : selected)) : Container(width: 0.0, height: 0.0))
      )
    );
  }


  }
