
import 'dart:async';
import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'data/error.dart';
import 'data/place_response.dart';
import 'data/result.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PlacesSearchMapSample extends StatefulWidget {
  final String keyword;
  PlacesSearchMapSample(this.keyword);

  @override
  State<PlacesSearchMapSample> createState() {
    return _PlacesSearchMapSample();
  }
}

class _PlacesSearchMapSample extends State<PlacesSearchMapSample> {
  CollectionReference HosCollectionRef =
      FirebaseFirestore.instance.collection('Hospitals');
  static const String _API_KEY = 'AIzaSyDuVz6oFf8PnNi-PuKf46YuUf-PXGWGvRI';

  static double latitude = 19.022480;
  static double longitude = 72.855030;
  static const String baseUrl =
      "https://maps.googleapis.com/maps/api/place/nearbysearch/json";

  List<Marker> markers = <Marker>[];
  late Error error;
  late List<Result> places;
  bool searching = true;
  late String keyword;

  Set<Marker> _markers = Set<Marker>();

  void _setMarker(LatLng point) {
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('marker'),
          position: point,
        ),
      );
    });
  }

  static final Marker m1 = Marker(
      markerId: MarkerId('Hosppital'),
      infoWindow: InfoWindow(title: 'hospital'),
      position: LatLng(latitude, longitude),
      icon: BitmapDescriptor.defaultMarker,
      );

  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _myLocation = CameraPosition(
      target: LatLng(latitude, longitude), zoom: 12, bearing: 15.0, tilt: 75.0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
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
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     searchNearby(latitude, longitude);
      //   },
      //   label: Text('Places Nearby'),
      //   icon: Icon(Icons.place),
      // ),
    );
  }

  void _setStyle(GoogleMapController controller) async {
    String value = await DefaultAssetBundle.of(context)
        .loadString('assets/maps_style.json');
    controller.setMapStyle(value);
  }

  void searchNearby(double latitude, double longitude) async {
    setState(() {
      markers.clear();
    });
    String url =
        '$baseUrl?key=$_API_KEY&location=$latitude,$longitude&radius=10000&keyword=${widget.keyword}';
    print(url);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      _handleResponse(data);
    } else {
      throw Exception('An error occurred getting places nearby');
    }

    // make sure to hide searching
    setState(() {
      searching = false;
    });
  }

  void _handleResponse(data) {
    // bad api key or otherwise
    if (data['status'] == "REQUEST_DENIED") {
      setState(() {
        error = Error.fromJson(data);
      });
      // success
    } else if (data['status'] == "OK") {
      setState(() {
        places = PlaceResponse.parseResults(data['results']);
        for (int i = 0; i < places.length; i++) {
          markers.add(
            Marker(
              markerId: MarkerId(places[i].placeId),
              position: LatLng(places[i].geometry.location.lat,
                  places[i].geometry.location.long),
              infoWindow: InfoWindow(
                  title: places[i].name, snippet: places[i].vicinity),
              onTap: () {},
            ),
          );
        }
      });
    } else {
      print(data);
    }
  }
}
