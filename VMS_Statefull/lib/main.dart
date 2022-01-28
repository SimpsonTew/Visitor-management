// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'check.dart';
import 'listout.dart';
import 'name_list.dart';
import 'selection.dart';
import 'template.dart';
import 'time.dart';

String subheadertxt = "PLEASE SELECT ONE OF THE FOLLOWING OPTION";
String subheadername = "PLEASE SELECT YOUR NAME";
String subheaderoption = "PLEASE SELECT ONE OPTION";
String subheadernone = "";
//String passing = "";
double width1 = 50;
double width2 = 40;
double widthfactor = 0.7;

ThemeData LightTheme =
    ThemeData(brightness: Brightness.light, primaryColor: Colors.blue);

ThemeData DarkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.blue
    // textTheme: TextTheme(
    //   bodyText1: TextStyle(),
    //   bodyText2: TextStyle(),
    // ).apply(
    //   bodyColor: Colors.orange,
    //   displayColor: Colors.white,
    // ),
    );

//bool ? _light;
dynamic now = DateTime.now();
bool _light =
    DateTime.now().hour > 6 && DateTime.now().hour < 11 ? true : false;

void main() {
  runApp(MaterialApp(
    theme: _light ? LightTheme : DarkTheme,
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (Context) => Home(),
      '/selection': (Context) =>
          Template(SelectOption(), subheaderoption, width1, widthfactor),
      '/adminin': (Context) =>
          Template(AdminList(), subheadername, width2, widthfactor),
      '/adminout': (Context) =>
          Template(AdminOut(), subheadername, width2, widthfactor),
      '/staffin': (Context) =>
          Template(StaffList(), subheadername, width2, widthfactor),
      '/staffout': (Context) =>
          Template(StaffOut(), subheadername, width2, widthfactor),
      '/studentin': (Context) =>
          Template(StudentList(), subheadername, width2, widthfactor),
      '/studentout': (Context) =>
          Template(StudentOut(), subheadername, width2, widthfactor),
      // '/checkin': (Context) => Template(
      //     Checkin(
      //       userName: name.name,
      //       timeGreet: timeGreet,
      //       time: time,
      //     ),
      //     subheadernone,
      //     50,
      //     0.7),
      // Template(Checkin(), subheadernone, width2, widthfactor), // done
      //'/checkout': (Context) => Template(Checkout(), subheadertxt, width2, widthfactor),
    },
  ));
}

// Done Except day and night feature
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            margin: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 2.0)),
            child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/selection');
                },
                child: Center(
                  child: FittedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WELCOME TO KABBEE CAMPUS',
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[400],
                            letterSpacing: 1.0,
                          ),
                        ),
                        const SizedBox(height: 40.0),
                        const Text(
                          'WE ARE HAPPY TO HAVE YOU HERE!',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            letterSpacing: 1.0,
                          ),
                        ),
                        const SizedBox(
                          height: 100.0,
                        ),
                        const Text(
                          'TOUCH THE SCREEN TO START',
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ))),
      ),
    );
  }
}
