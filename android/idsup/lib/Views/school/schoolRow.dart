import'package:flutter/material.dart';
import 'schoolDetail.dart';

class schoolRow extends StatelessWidget {

  final school;

  const schoolRow({Key key, this.school}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile
          (

          title: Text(school.name),
          leading: Image.asset('assets/pics/${school.imagepath}.png', width: 50.0),
          onTap: ()
          {
            Navigator.push(context,
              MaterialPageRoute(builder:
              (context) => schoolDetail(school: school,)
              )
            );
          },

    )
    , );
  }
}

      /*
      children: <Widget>[
        Material(
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 2.0,
            ),
            //onTap: //TODO : this.onTap,
            leading: Image.asset(
              'assets/${school.imagepath}.jpg',
              width: 50.0,
            ),
            title: Text(school.name),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  Icons.arrow_forward_ios,
                  size: 15.0,
                  color: const Color(0xFFD3D3D3),
                ),
              ],
            ),
          ),
        ),
        const Divider(
          height: 1,
          indent: 16.0,
        ),
      ],
    );

  }
}
*/