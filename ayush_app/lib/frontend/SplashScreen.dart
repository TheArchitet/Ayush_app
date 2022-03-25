
import 'package:ayush_app/frontend/Home_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: colors,
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.65,
          height: MediaQuery.of(context).size.height * 0.35,
          child: Lottie.network(
              'https://assets2.lottiefiles.com/private_files/lf30_grzT0Q.json',
              height: 200.0,
              // repeat: true,
              animate: true,
              fit: BoxFit.fill),
        ),
      ),
    );
  }
}
