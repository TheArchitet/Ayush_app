import 'package:ayush_app/frontend/Home_page.dart';
import 'package:ayush_app/frontend/Hospital/Doctors.dart';
import 'package:ayush_app/frontend/Hospital/Hospital_List.dart';
import 'package:ayush_app/frontend/Hospital/Services.dart';
import 'package:ayush_app/frontend/Hospital/inpatient.dart';
import 'package:ayush_app/frontend/SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'backend/places_search_map.dart';
import 'backend/search_filter.dart';
import 'frontend/Hospital/Outpatient.dart';

//void main() => runApp(GoogleMapsSampleApp());
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(GoogleMapsSampleApp());
}

class GoogleMapsSampleApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GoogleMapSampleApp();
  }
}

class _GoogleMapSampleApp extends State<GoogleMapsSampleApp>{
  static String keyword = "Bakery";

  void updateKeyWord(String newKeyword) {
    print(newKeyword);
    setState(() {
      keyword = newKeyword;  
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Google Maps Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        "/Home": (context) => Home(),
        "/Hospital_list": (context) => Hospital_list(),
        "/Inpatient": (context) => Inpatient(Name: "Inpatient"),
        "/Outpatient": (context) => Outpatient(Name: "Outpatient"),
        "/Doctors": (context) => Doctors(Name: "Doctors"),
        "/Services": (context) => Services(
              Name: "Services",
            ),
      },
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text('Google Maps RW'),
      //     actions: <Widget>[
      //       Builder(
      //         builder: (BuildContext context) {
      //           return IconButton(
      //               icon: Icon(Icons.filter_list),
      //               tooltip: 'Filter Search',
      //               onPressed: () {
      //                 Scaffold.of(context).openEndDrawer();
      //               });
      //         },
      //       ),
      //     ],
      //   ),
      //   // body: PlacesSearchMapSample(keyword),
      //   // endDrawer: SearchFilter(updateKeyWord),
      // ),
    );
  }
}
