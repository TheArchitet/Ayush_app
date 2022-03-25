import 'package:flutter/material.dart';

class Inpatient extends StatelessWidget {
  String Name;
  Inpatient({required this.Name, Key? key}) : super(key: key);
  List<String> OPD = [
    "IPD services",
    "Operation Thereater(OT) & Labour Room",
    "Panchakarma Therapy",
  ];
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
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {},
            child: Container(
              width: double.infinity,
              height: 80,
              margin: EdgeInsets.only(left: 8, right: 8, top: 8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.green, width: 3),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  )),
              child: Center(
                child: Text(
                  OPD[index],
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
