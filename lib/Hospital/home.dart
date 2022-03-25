import 'package:ayush/Hospital/inpatient.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  String hospital_name;
  home({required this.hospital_name, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            SizedBox(
              height: 7,
            ),
            Container(
              height: 120,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5, top: 5, bottom: 5),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        // border: Border.all(color: Colors.green, width: 3),
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: NetworkImage(
                              "https://ayush.karnataka.gov.in/storage/dept/877938.jpg",
                            ),
                            fit: BoxFit.contain)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          hospital_name,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "HR mahajani road,\nMatunga",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "   Opening Time : ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "   Closing Time : ",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                )),
            Divider(
              thickness: 2,
            ),
            Sanket(context, "Inpatient Department ", "Outpatient Department",
                "/Inpatient", "/Outpatient"),
            Sanket(context, "Doctors ", "Services Available", "/Doctors",
                "/Services"),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/Hospital_List');
              },
              child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    "Get Direction",
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
    ));
  }
}

Widget Sanket(
  context,
  String text1,
  String text2,
  String nv1,
  String nv2,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      InkWell(
        onTap: () {
          Navigator.pushNamed(context, nv1);
        },
        child: Container(
          child: Center(
            child: Text(text1,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14)),
          ),
          margin: EdgeInsets.only(right: 5, left: 5, top: 10, bottom: 10),
          width: MediaQuery.of(context).size.width * 0.43,
          height: 85,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.green, width: 3),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      InkWell(
        onTap: () {
          Navigator.pushNamed(context, nv2);
        },
        child: Container(
          child: Center(
            child: Text(text2,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.5)),
          ),
          margin: EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 10),
          width: MediaQuery.of(context).size.width * 0.43,
          height: 85,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.green, width: 3),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    ],
  );
}
