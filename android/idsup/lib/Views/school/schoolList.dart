
import 'package:flutter/material.dart';
import 'package:idsup/main.dart';
import '../../Models/schools.dart';
import '../../Models/Modeldata.dart';

import 'schoolRow.dart';

class schoolList extends StatefulWidget {
  final List<Schools> schools;
  List<bool> selected;

  schoolList({Key key, this.schools, this.selected}) : super(key: key);

  @override
  _schoolList createState() => _schoolList(schools: schools, selected: selected);
}

class _schoolList extends State<schoolList> {
  final List<Schools> schools;

  Map<int, bool> selectedFlag = {};
  bool isSelectionMode = false;

  List<String> majors;
  List<bool> selected;
  _schoolList({Key key, this.schools, this.selected}); //: super(key: key);

  @override
  //@mustCallSuper
  initState() {
    super.initState();
    majors = getMajors(schools);
    
    }
  

  Widget build(BuildContext context) {
    return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(children: <Widget>[
                  Card(
                    child: 
                    ListTile(
                    title: Text("Filters"),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => selection(majors: majors,selected: selected,selectedFlag: selectedFlag,)
                      )
                      );
                    } )
                    )
                    ,
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: schools.length,
                    itemBuilder: (context, index) {
                      return (hasCommonMajors(schools[index].resume.majors,
                              selMajors(schools[index].resume.majors, selected))
                          ? schoolRow(school: schools[index])
                          : Container());
                    },
                  )
                ]
              ),
        
    );
  }

  

  
}

class selection extends StatefulWidget
{
  List<String> majors;
  List<bool> selected;
  Map<int, bool> selectedFlag = {};

  selection({Key key, this.majors, this.selected, this.selectedFlag}) : super(key: key);

  _selection createState() => _selection(majors: majors, selected: selected, selectedFlag: selectedFlag);
}

class _selection extends State<selection>
{
  List<String> majors;
  List<bool> selected;
  Map<int, bool> selectedFlag = {};

  _selection({Key key, this.majors, this.selected, this.selectedFlag});
  
  @override

Widget build(BuildContext context) {

    return 
    WillPopScope(
      child: 
    Scaffold
    (
      appBar: AppBar(title: Text("Filters"),
      leading: IconButton(icon: Icon(Icons.arrow_back), 
      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(selected: selected))),)
      ),

      body: ListView.builder(
      //physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: majors.length,
      itemBuilder: (builder, index) {
        selectedFlag[index] = selectedFlag[index] ?? false;
        bool isSelected = selectedFlag[index];

        return Card(
            child: ListTile(
          onTap: () => onTap(isSelected, index),
          title: Text(majors[index]),
          leading: _buildSelectIcon(index),
        ));
      },
    ),
    ),
    onWillPop: () async
    {
     Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(selected: selected)));
     return Future.value(false);
    }
    );
  }
Widget _buildSelectIcon(int index) {
      return Icon(
        selected[index] ? Icons.check_box : Icons.check_box_outline_blank,
        color: Theme.of(context).primaryColor,
        size: 50,
      );
    return Container(
      width: 0,
      height: 0,
    );
  }

  void onTap(bool isSelected, int index) {
      setState(() {
        selected[index] = !selected[index];
        //isSelectionMode = selectedFlag.containsValue(true);
      });
  }
}