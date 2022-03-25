import 'package:flutter/material.dart';

class Doctors extends StatelessWidget {
  String Name;
  Doctors({required this.Name, Key? key}) : super(key: key);
  List<String> Kayachikitsa = [
    "Dr P.P Gore",
    "Dr Ruhi Anjaria",
    "Dr.Rohan Nikam"
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Experts in Kayachikitsa : ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(child: Kayachiktsa(Kayachikitsa)),
            Divider(
              thickness: 2,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Experts in Panchkarma : ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Expanded(child: Kayachiktsa(Kayachikitsa)),
            Divider(
              thickness: 2,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Experts in Homeopathy : ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Expanded(child: Kayachiktsa(Kayachikitsa)),
            Divider(
              thickness: 2,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Experts in Yoga : ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Expanded(child: Kayachiktsa(Kayachikitsa)),
            Divider(
              thickness: 2,
            ),
            // Align(
            //   alignment: Alignment.topLeft,
            //   child: Text(
            //     "Experts in Orthopedic : ",
            //     style: TextStyle(
            //         color: Colors.black,
            //         fontWeight: FontWeight.bold,
            //         fontSize: 20),
            //   ),
            // ),
            // Expanded(child: Kayachiktsa(Kayachikitsa)),
          ],
        ),
      ),
    );
  }
}

Widget Kayachiktsa(Kayachikitsa) {
  return ListView.builder(
    itemCount: 3,
    itemBuilder: (BuildContext context, int index) {
      return InkWell(
        onTap: () {},
        child: Container(
          width: double.infinity,
          height: 30,
          margin: EdgeInsets.only(left: 8, right: 8, top: 8),
          child: Text(
            Kayachikitsa[index],
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      );
    },
  );
}
