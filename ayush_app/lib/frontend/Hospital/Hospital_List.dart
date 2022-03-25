
import 'package:ayush_app/frontend/Hospital/home.dart';

import 'package:flutter/material.dart';

class Hospital_list extends StatelessWidget {
  Hospital_list({Key? key}) : super(key: key);
  List<String> Hospital = [
    "Morarji Desai National\n institute of yoga",
    "Sugun Hospital",
    "GHC Hospitals",
    "Nirali A M Naik Charitable\n Health-Care Facility",
    "Mangala Hospital"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 30,
        title: Center(child: Text("Ayush Hopitals")),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => home(
                            hospital_name: Hospital[index],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green, width: 3),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                right: 10, left: 10, top: 10, bottom: 10),
                            width: 110,
                            height: 115,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                // border: Border.all(color: Colors.green, width: 3),s
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://ayush.karnataka.gov.in/storage/dept/877938.jpg"),
                                    fit: BoxFit.contain)),
                          ),

                          Expanded(
                            child: Text(
                              Hospital[index],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          // Expanded(
                          //   child:
                          // )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              );
            }),
      ),
    );
  }
}
