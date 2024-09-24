import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class LocationService {
  Position? position;

  Future<Position?> accessCurrentLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
    }
    final permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      await Geolocator.requestPermission();
    }
    position = await Geolocator.getCurrentPosition();

    return position;
  }

  Future<Placemark?> getMyLocationInfo() async {
    if (position != null) {
      final placeMarks = await placemarkFromCoordinates(
          position!.latitude, position!.longitude);

      return placeMarks[0];
    }
    return null;
  }
}
