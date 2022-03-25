import 'package:flutter/material.dart';

class Outpatient extends StatelessWidget {
  String Name;
  Outpatient({required this.Name, Key? key}) : super(key: key);
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
    );
  }
}
