//import 'dart:html';

import 'package:flutter/material.dart';
import '../../Models/schools.dart';
import '../../Models/Modeldata.dart';

import 'schoolRow.dart';

class schoolList extends StatefulWidget {
  final List<Schools> schools;

  const schoolList({Key key, this.schools}) : super(key: key);

  @override
  _schoolList createState() => _schoolList(schools: schools);
}

class _schoolList extends State<schoolList> {
  final List<Schools> schools;

  Map<int, bool> selectedFlag = {};
  bool isSelectionMode = false;

  List<String> majors;
  List<bool> selected;
  _schoolList({Key key, this.schools}); //: super(key: key);

  @override
  //@mustCallSuper
  initState() {
    super.initState();
    majors = getMajors(schools);
    selected = List(majors.length);
    for (int i = 0; i < selected.length; i++) {
      selected[i] = true;
    }
  }

  Widget build(BuildContext context) {
    return /*Material(
      child: */SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(children: <Widget>[
                  selection(),
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
              )
            //)
    );
  }

  Widget selection() {
    
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
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
    );
  }

  Widget _buildSelectIcon(int index) {
    if (!isSelectionMode) {
      return Icon(
        selected[index] ? Icons.check_box : Icons.check_box_outline_blank,
        color: Theme.of(context).primaryColor,
        size: 50,
      );
    }
    return Container(
      width: 0,
      height: 0,
    );
  }

  void onTap(bool isSelected, int index) {
    if (!isSelectionMode) {
      setState(() {
        selected[index] = !selected[index];
        isSelectionMode = selectedFlag.containsValue(true);
      });
    }
  }
}
