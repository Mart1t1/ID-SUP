import 'dart:async';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../Models/schools.dart';

class schoolDetail extends StatelessWidget {
  final Schools school;

  const schoolDetail({Key key, this.school}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
            appBar: AppBar(
                title: Text(school.name),
                leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () => Navigator.pop(context, false),
                )),
            body: Padding(
              child: SingleChildScrollView(
                child:  Column(children: <Widget>[
                  _imageView(),

                  Text(
                    school.name,
                    style: TextStyle()
                        .copyWith(fontWeight: FontWeight.w400, fontSize: 28.0),
                  ),

                  Row(
                    children: [
                      Text(school.resume.approxAddress,
                          style: TextStyle().copyWith(
                              fontWeight: FontWeight.w500, fontSize: 14.0)),
                      Expanded(
                        child: Container(),
                      ),
                      Text(school.category,
                          style: TextStyle().copyWith(
                              fontWeight: FontWeight.w500, fontSize: 14.0)),
                      _custDivid(),
                    ],

                    //divider
                  ),
                  Row(children: [
                    Text('Since : ' + school.resume.since.toString()),
                    Expanded(child: Container())
                  ]),

                  Row(children: [
                    Text('Students : ' +
                        school.resume.numberOfStudents.toString()),
                    Expanded(child: Container())
                  ]),

                  //divider
                  _custDivid(),

                  Row(
                    children: [
                      Text('Field of studies : '),
                      Expanded(child: Container())
                    ],
                  ),

                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: school.resume.majors.length,
                    itemBuilder: (context, index) {
                      return Text(' - ' + school.resume.majors[index]);
                    },
                  ),

                  //divider
                  _custDivid(),

                  Row(
                    children: [
                      Text(
                        'About ' + school.name,
                        style: TextStyle().copyWith(
                            fontWeight: FontWeight.w400, fontSize: 28.0),
                      )
                    ],
                  ),

                  Text(school.resume.history),

                  _custDivid(),

                  _footer(),
                ]
                ),
              ),
              padding: EdgeInsets.all(16),
            )
            )
            );
  }

  Widget _imageView() {
    return Container(
      height: 250.0,
      width: double.infinity,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              width: 4.0,
              color: Colors.transparent,
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0x22000000),
                blurRadius: 10.0,
                spreadRadius: 10.0,
              ),
            ],
            borderRadius: const BorderRadius.all(const Radius.circular(125.0)),
          ),
          width: 250.0,
          height: 250.0,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(const Radius.circular(120.0)),
            child: Image.asset('assets/pics/${school.imagepath}.jpeg'),
          ),
        ),
      ),
    );
  }

  Widget _footer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          child: _socialpic('ig'),
          onTap: () async {
            await launch(school.socials.instagram);
          },
        ),
        GestureDetector(
          child: _socialpic('fb'),
          onTap: () async {
            await launch(school.socials.facebook);
          },
        ),
        GestureDetector(
          child: _socialpic('tw'),
          onTap: () async {
            await launch(school.socials.twitter);
          },
        ),

        GestureDetector(
        child: Icon(Icons.call, color: Colors.blue, size: 50),
        onTap: () async{
          await launch('tel:'+school.resume.phone.toString());
        },
        ),
        GestureDetector(
        child: Icon(Icons.mail, color: Colors.blue, size: 50),
        onTap: () async{
          await launch('mailto:'+ school.resume.mailAdress);
        },
        )
      ],
    );
  }

  Widget _custDivid() {
    return Divider(
      height: 20,
      thickness: 5,
      indent: 20,
      endIndent: 20,
    );
  }

  Widget _socialpic(String social) {
    return Image.asset(
      'assets/pics/socials/${social}.png',
      height: 50.0,
    );
  }
}
