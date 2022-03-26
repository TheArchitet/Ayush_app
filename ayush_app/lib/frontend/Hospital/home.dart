
import 'package:ayush_app/frontend/Hospital/Doctors.dart';
import 'package:ayush_app/frontend/Hospital/Outpatient.dart';
import 'package:ayush_app/frontend/Hospital/Services.dart';
import 'package:ayush_app/frontend/Hospital/inpatient.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  String hospital_name;
    String Start ;
         String end;
         String id ;
         String Address ;
  home({required this.hospital_name,required this.end , required this.Start, required this.id, required this.Address }) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Text(id) , 
            SizedBox(
              height: 7,
            ),
            Container(
                    margin: EdgeInsets.only(left: 5, top: 5, bottom: 5),
                    width: 120,
                    height: 120,
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
                   SizedBox(
              height: 7,
            ),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Align(
                        alignment: Alignment.center,
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
                      ),]) , 
            
            
            Divider(
              thickness: 2,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "   Opening Time : ${Start}",
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
                  "   Closing Time : ${end}",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                )),
            Divider(
              thickness: 2,
            ),
          Row(
            children: [
              Sanket(context, "Inpatient Rate", Inpatient(Name: "Inpatient")) ,
               Sanket(context, "Outpatient rate", Outpatient(Name: "Outpatient")) ,

            ],
          ), 
           Row(
            children: [
              Sanket(context, "Doctor", Doctors(Name: "Doctors", id: id)) ,
               Sanket(context, "Services Available ",Services(Name: "Services Available",) ) ,

            ],
          ) , 
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
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
 
                 

Widget Sanket(context ,text1 , Widget s){
  return  InkWell(
        onTap: () {
           Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  s),
  );
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
      );
}