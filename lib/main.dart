import 'package:ayush/Home_page.dart';
import 'package:ayush/Hospital/Doctors.dart';
import 'package:ayush/Hospital/Hospital_List.dart';
import 'package:ayush/Hospital/Outpatient.dart';
import 'package:ayush/Hospital/Services.dart';
import 'package:ayush/Hospital/home.dart';
import 'package:ayush/Hospital/inpatient.dart';
import 'package:ayush/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        "/Home": (context) => Home(),
        "/Hospital_list": (context) => Hospital_list(),
        "/Inpatient": (context) => Inpatient(Name: "Inpatient"),
        "/Outpatient": (context) => Outpatient(Name: "Outpatient"),
        "/Doctors": (context) => Doctors(Name: "Doctors"),
        "/Services": (context) => Services(
              Name: "Services",
            ),
      },
    );
  }
}
