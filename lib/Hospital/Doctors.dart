import 'package:flutter/material.dart';

class Doctors extends StatelessWidget {
  String Name;
  Doctors({required this.Name, Key? key}) : super(key: key);
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
