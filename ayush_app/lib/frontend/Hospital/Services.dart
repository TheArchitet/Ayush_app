// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  String Name;
  Services({required this.Name, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 30,
        title: Center(child: Text(Name)),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Sanket("List of service available :", 23),
              SizedBox(
                height: 2,
              ),
              Text(
                "IPD",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "OPD",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Procedures : ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "Panchakarma",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "Kriyakalpa",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "Shalya(Surgery)",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "kshara sutra Therapy for piles,Fistula,Fissure along with Rakta Mokhsana and Agnikarma",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "Labor Room",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "Diagnostic Services",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "Clinical Pathology",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "Hematology",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "Biochemistry",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "Microbiology",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "ECG",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "Radiology (CT scan,x-ray,Ultrasound,BMD",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Divider(
                thickness: 2,
              ),
              Text(
                "Pharmacy services : ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "Free dispensing of available Ayurvedic services ",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Divider(
                thickness: 2,
              ),
              Text(
                "Ancililary Services",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "Ambulance Services:",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "Canteen Services",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Housekeeping Services",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Security Services",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget Sanket(String Name, double size) {
  return Text(
    Name,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: size,
    ),
  );
}
