
import 'package:ayush_app/frontend/slider.dart';

import "package:flutter/material.dart";

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  int page = 0;

  @override
  Widget build(BuildContext context) {
    // List Screens =[

    // ]
    List Images = [
      "assets/images/Ayurveda.jpeg",
      "assets/images/logo.jpeg",
    ];
    List Name = ["Ayurveda", "Yoga"];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 30,
        title: Center(child: Text("Ayush Hospitals")),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
      ),
     
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              slider(),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                column("assets/images/Ayurvedaa_s.jpeg", "Ayurveda"),
                column("assets/images/Yoga_s.jpeg", "Yoga")
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                column("assets/images/Unani_s.jpeg", "Unani"),
                column("assets/images/Siddha.jpeg", "Siddha")
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                column("assets/images/Homeopathy_s.jpeg", "Homeopathy"),
                column("assets/images/Naturopathy_s.jpeg", "Natureopathy")
              ]),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/Hospital_list');
                },
                child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      "Search Hospitals",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/MapScreen');
                },
                child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      "Search on Map",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget column(String image, String text) {
  return Column(
    children: [
      InkWell(
        onTap: (){
          
        },
        child: Container(
          margin: EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 10),
          width: 150,
          height: 150,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.green, width: 3),
              borderRadius: BorderRadius.circular(30),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.contain)),
        ),
      ),
     
    ],
  );
}
