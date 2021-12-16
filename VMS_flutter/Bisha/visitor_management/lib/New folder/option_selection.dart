// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'main.dart';
import 'staff_names.dart';
import 'buttons.dart';
import 'Student_names.dart';
import 'admin_names.dart';
import 'visitor_page.dart';

// void main() {
//   runApp(OptionSelect());
// }

class OptionSelect extends StatelessWidget {
  const OptionSelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 120.0),
      child: Column(
        children: [
          BlueButtons(
              btnName: "VISITOR",
              page: ActionPage(VisitorPage(),"REGISTER HERE",0.7)),
          BlueButtons(
              btnName: "STUDENT",
              page: ActionPage(NameList(),"PLEASE SELECT YOUR NAME",0.7)),
          BlueButtons(
              btnName: "STAFF",
              page: ActionPage(StaffNameList(),"PLEASE SELECT YOUR NAME",0.7)),
          BlueButtons(
              btnName: "ADMINISTRATOR",
              page: ActionPage(AdminNameList(),"PLEASE SELECT YOUR NAME",0.7)),
        ],
      ),
    );
  }
}
