import 'dart:async';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/services.dart';
import 'package:unit/core/resources/images.dart';

import '../widgets/home_widget.dart';

class CustomMapMarkers extends StatefulWidget {
  const CustomMapMarkers({super.key});

  @override
  CustomMapMarkersState createState() => CustomMapMarkersState();
}

class CustomMapMarkersState extends State<CustomMapMarkers> {
  final Completer<GoogleMapController> _controller = Completer();
  final List<Marker> _markers = [];

  @override
  void initState() {
    super.initState();
    _loadMarkers();
  }

  Future<void> _loadMarkers() async {
    final markerIcon = await _createCustomMarker(AppImages.mapLogo);

    final List<LatLng> markerPositions = [
      const LatLng(38.7749, -122.4194),
      const LatLng(37.7849, -122.4294),
      const LatLng(33.7949, -122.4394),
      const LatLng(33.8049, -122.4494),
      const LatLng(34.8149, -122.4594),
      const LatLng(37.8249, -122.4694),
      const LatLng(31.8349, -122.4794),
      const LatLng(30.9349, -122.4894),
      const LatLng(32.8549, -122.4994),
      const LatLng(33.5549, -122.5094),
    ];

    for (int i = 0; i < markerPositions.length; i++) {
      _markers.add(
        Marker(
          onTap: () {
            showDialog(
                barrierColor: Colors.transparent,
                context: context,
                builder: (context) {
                  return AlertDialog(
                    alignment: Alignment.bottomCenter,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    contentPadding: EdgeInsets.zero,
                    insetPadding: const EdgeInsets.only(bottom: 80),
                    backgroundColor: Colors.white,
                    content: const LocationDetailsWidget(),
                  );
                });
          },
          markerId: MarkerId('marker${i + 1}'),
          position: markerPositions[i],
          icon: markerIcon,
        ),
      );
    }
    setState(() {});
  }

  Future<BitmapDescriptor> _createCustomMarker(String imagePath) async {
    final byteData = await rootBundle.load(imagePath);
    final codec = await ui.instantiateImageCodec(byteData.buffer.asUint8List(),
        targetWidth: 50, targetHeight: 50);
    final frame = await codec.getNextFrame();
    final data = await frame.image.toByteData(format: ui.ImageByteFormat.png);
    return BitmapDescriptor.bytes(data!.buffer.asUint8List());
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 610.h,
      child: GoogleMap(
        onMapCreated: (controller) => _controller.complete(controller),
        initialCameraPosition: const CameraPosition(
          target: LatLng(37.7749, -122.4194),
          zoom: 10,
        ),
        markers: Set.from(_markers),
      ),
    );
  }
}
