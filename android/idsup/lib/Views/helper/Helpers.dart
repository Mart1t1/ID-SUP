import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget
{
  final String imagepath;

  const CircleImage({Key key, this.imagepath}) : super(key: key);


  @override


  Widget build(BuildContext context)
  {
    return Container(
        child: ClipOval(
          child: Image.asset("pics/"+ imagepath + ".jpeg")
      ),
            decoration: BoxDecoration(
              boxShadow: [
    BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 5,
    blurRadius: 7,
    offset: Offset(0, 3), // changes position of shadow
      ),
  ],
            )
    );
  }

}