import'package:flutter/material.dart';
import '../../Models/Modeldata.dart';
import '../../Models/schools.dart';

import 'schoolRow.dart';

class schoolList extends StatelessWidget {
  final List schools;

  const schoolList({Key key, this.schools}) : super(key: key);
  @override


  Widget build(BuildContext context) {
    return Material(

        child: ListView.builder(
      shrinkWrap: true,
      itemCount: schools.length,
      itemBuilder: (context, index){
        return schoolRow(school: schools[index],
        );
      },

    )
    );


  }
}