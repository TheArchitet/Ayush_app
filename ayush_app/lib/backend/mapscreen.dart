import 'dart:async';

import 'package:ayush_app/backend/places_search_map.dart';
import 'package:ayush_app/backend/search_filter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class MapScreen extends StatefulWidget {
  const MapScreen({ Key? key }) : super(key: key);

  
  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {

  static double latitude = 19.022480;
  static double longitude = 72.855030;

  CollectionReference HosCollectionRef =
  FirebaseFirestore.instance.collection('Hospitals');
  static const String _API_KEY = 'AIzaSyDuVz6oFf8PnNi-PuKf46YuUf-PXGWGvRI';

  static final Marker m1 = Marker(
      markerId: MarkerId('Hosppital'),
      infoWindow: InfoWindow(title: 'hospital'),
      position: LatLng(latitude, longitude),
      icon: BitmapDescriptor.defaultMarker,
      );

  static final CameraPosition _myLocation = CameraPosition(
      target: LatLng(latitude, longitude), zoom: 12, bearing: 15.0, tilt: 75.0);

  Completer<GoogleMapController> _controller = Completer();

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
        markers: {m1}, //Set<Marker>.of(markers),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          HosCollectionRef
              .get()
              .then((value) {
            value.docs.forEach((result) {
              print(result.data());
            });
          });
        },
        label: Text('Places Nearby'),
      ),
      //endDrawer: SearchFilter(updateKeyWord),
      
    );
  }

  void _setStyle(GoogleMapController controller) async {
    String value = await DefaultAssetBundle.of(context)
        .loadString('assets/maps_style.json');
    controller.setMapStyle(value);
  }
}