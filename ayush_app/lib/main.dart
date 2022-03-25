/*
 * Copyright (c) 2019 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
 * distribute, sublicense, create a derivative work, and/or sell copies of the
 * Software in any work that is designed, intended, or marketed for pedagogical or
 * instructional purposes related to programming, coding, application development,
 * or information technology.  Permission for such use, copying, modification,
 * merger, publication, distribution, sublicensing, creation of derivative works,
 * or sale is expressly withheld.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */
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
