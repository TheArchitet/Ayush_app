// import 'package:ayush_app/backend/mapscreen.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class MapScreen1 extends StatefulWidget {
//   const MapScreen1({Key? key}) : super(key: key);

//   @override
//   State<MapScreen1> createState() => _MapScreen1State();
// }

// class _MapScreen1State extends State<MapScreen1> {
//   CollectionReference HosCollectionRef =
//       FirebaseFirestore.instance.collection('Hospitals');
//   List<Marker> ml = [];
//   @override
//   Widget build(BuildContext context) {
    
//     return Scaffold(
//       body: Center(
//         child: RaisedButton(
//         onPressed: () {
//           HosCollectionRef.get().then((value) {
//             value.docs.forEach((result) {
//               setState(() {
//               //   setState(() {
//               //   lat = result.get('lat');
//               //   long = result.get('long');
//               // });
//                 // if(dis.distance_xy(ml[0],))
//                 ml.add(Marker(
//                   markerId: MarkerId('Hospital'),
//                   infoWindow: InfoWindow(title: 'hospital'),
//                   position: LatLng(result.get('lat'), result.get('long')),
//                   icon: BitmapDescriptor.defaultMarker,
//                 ));
//               });
              
//               print(result.get('lat') + result.get('long'));
//             });
//           }).then((_) {
//             Navigator.push(context, /*'/MapScreen'*/
//             MaterialPageRoute(builder: (context) =>  MapScreen(ml1: ml))
//             );
//           });
//         },
//       )),
//     );
//   }
// }
