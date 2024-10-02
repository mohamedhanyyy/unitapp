import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final mapController = Completer<GoogleMapController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
          mapType: MapType.satellite,
          myLocationEnabled: true,
          initialCameraPosition: const CameraPosition(
              target: LatLng(24.774265, 46.738586), zoom: 15),
          onMapCreated: (GoogleMapController controller) {
            mapController.complete(controller);
          }),
    );
  }
}
