// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:visitor_management/New%20folder/buttons.dart';
import 'package:visitor_management/New%20folder/startingpage.dart';

class VisitorPage extends StatelessWidget {
  const VisitorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(100.0),
      child: Column(
        children: [
          Padding(padding: EdgeInsets.all(40.0)),
          Text(
            'Enter Your Name Here',
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.blue,
            ),
          ),
          Padding(padding: EdgeInsets.all(5.0)),
          SizedBox(
            width: 500.0,
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)))),
            ),
          ),
          Padding(padding: EdgeInsets.all(60.0)),
          ActionButtons(
            btnName: 'SUBMIT',
            width: 300.0,
            page: StartingPage(),
          )
        ],
      ),
    );
  }
}
