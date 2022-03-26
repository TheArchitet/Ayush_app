import 'dart:async';

import 'package:ayush_app/backend/distance.dart';
import 'package:ayush_app/backend/places_search_map.dart';
import 'package:ayush_app/backend/search_filter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

dynamic lat, long;
class _MapScreenState extends State<MapScreen> {
  static double latitude = 19.02248;
  static double longitude = 72.85503;

  CollectionReference HosCollectionRef =
      FirebaseFirestore.instance.collection('Hospitals');
  static const String _API_KEY = 'AIzaSyDuVz6oFf8PnNi-PuKf46YuUf-PXGWGvRI';

  static final Marker m1 = Marker(
    markerId: MarkerId('1'),
    infoWindow: InfoWindow(title: 'Rashtriya Ayurveda Vidyapeeth'),
    position: LatLng(19.022912,72.849886),
    icon: BitmapDescriptor.defaultMarker,
  );
  static final Marker m2 = Marker(
    markerId: MarkerId('2'),
    infoWindow: InfoWindow(title: 'Sugun Hospital'),
    position: LatLng(19.024493,72.854429),//(28.60957, 77.03527),
    icon: BitmapDescriptor.defaultMarker,
  );
  static final Marker m3 = Marker(
    markerId: MarkerId('3'),
    infoWindow: InfoWindow(title: 'National Institute of Ayurveda'),
    position: LatLng(19.027881,72.853856),//(29.9484, 76.81963),
    icon: BitmapDescriptor.defaultMarker,
  );
  static final Marker m4 = Marker(
    markerId: MarkerId('4'),
    infoWindow: InfoWindow(title: 'Morarji Desai National Institute of Yoga'),
    position: LatLng(19.030844,72.860079), //(29.9484, 76.81963),
    icon: BitmapDescriptor.defaultMarker,
  );
  static final Marker m5 = Marker(
    markerId: MarkerId('5'),
    infoWindow: InfoWindow(title: 'hospital'),
    position: LatLng(34.31643, -78.81979),
    icon: BitmapDescriptor.defaultMarker,
  );
  static final Marker m6 = Marker(
    markerId: MarkerId('6'),
    infoWindow: InfoWindow(title: 'hospital'),
    position: LatLng(28.63243, 77.21879),
    icon: BitmapDescriptor.defaultMarker,
  );

  List<Marker> ml = [m1,m2,m3,m4];
//    Map<MarkerId, Marker> markers = <MarkerId, Marker>{MarkerId('marker_id_1'):Marker(
// markerId: MarkerId('marker_id_1'),
// position: LatLng(latitude, longitude),
// infoWindow: InfoWindow(title: 'marker_id_1', snippet: '*'),
// icon: BitmapDescriptor.defaultMarker,
// onTap: () {
//   //_onMarkerTapped(markerId);
//   print('Marker Tapped');
// },
// onDragEnd: (LatLng position) {
//   print('Drag Ended');
// },  )};
  static final CameraPosition _myLocation = CameraPosition(
      target: LatLng(latitude, longitude), zoom: 14, bearing: 15.0, tilt: 75.0);
  //dynamic dis = distance()
  Completer<GoogleMapController> _controller = Completer();
  // void init_state(){
  //   HosCollectionRef.get().then((value) {
  //           value.docs.forEach((result) {
  //             setState(() {
  //             //   setState(() {
  //             //   lat = result.get('lat');
  //             //   long = result.get('long');
  //             // });
  //               // if(dis.distance_xy(ml[0],))
  //               ml.add(Marker(
  //                 markerId: MarkerId('Hospital'),
  //                 infoWindow: InfoWindow(title: 'hospital'),
  //                 position: LatLng(result.get('lat'), result.get('long')),
  //                 icon: BitmapDescriptor.defaultMarker,
  //               ));
  //             });
              
  //             print(result.get('lat') + result.get('long'));
  //           });
  //         });
  // }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 30,
        title: Center(child: Text("Ayush Hospitals")),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
      ),
      body: //PlacesSearchMapSample(),
          GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _myLocation,
        onMapCreated: (GoogleMapController controller) {
          _setStyle(controller);
          _controller.complete(controller);
        },
        markers: Set<Marker>.of(ml), //widget.ml1
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     HosCollectionRef.get().then((value) {
      //       value.docs.forEach((result) {
      //         setState(() {
      //           ml.add(Marker(
      //             markerId: MarkerId('Hospital'),
      //             infoWindow: InfoWindow(title: 'hospital'),
      //             position: LatLng(result.get('lat'), result.get('long')),
      //             icon: BitmapDescriptor.defaultMarker,
      //           ));
      //         });
      //         print(result.get('lat') + result.get('long'));
      //       });
      //     });
      //   },
      //   label: Text('Places Nearby'),
      // ),
      //endDrawer: SearchFilter(updateKeyWord),
    );
  }

  void _setStyle(GoogleMapController controller) async {
    String value = await DefaultAssetBundle.of(context)
        .loadString('assets/maps_style.json');
    controller.setMapStyle(value);
  }
}
