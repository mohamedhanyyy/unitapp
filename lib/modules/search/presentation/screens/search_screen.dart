import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../widgets/mark_model.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<MapMarker> markers = [];

  final mapController = Completer<GoogleMapController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GoogleMap(
            initialCameraPosition: const CameraPosition(
                target: LatLng(41.143029, -8.611274)),

            onMapCreated: (controller) {
              mapController.complete(controller);
            },
            onCameraMove: (position) {
              // Update the markers for the updated position.zoom
            }),
      ),
    );
  }
}
