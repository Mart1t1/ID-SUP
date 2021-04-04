import'package:flutter/material.dart';
import '../../Models/Modeldata.dart';
import '../../Models/schools.dart';

class schoolRow extends StatelessWidget {

  final School schoolinRow;

  const schoolRow({Key key, this.schoolinRow}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    Row(
      textDirection: TextDirection.rtl,
      children: <Widget>[
        const FlutterLogo(),
        Expanded(
          child: Text(schoolinRow.name),
        ),
        const Icon(Icons.sentiment_very_satisfied),
      ],
    );
  }
}