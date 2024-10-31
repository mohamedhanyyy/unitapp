import 'package:flutter_bloc/flutter_bloc.dart';

class MapZoomCubit extends Cubit<double> {
  MapZoomCubit() : super(0); // Initial zoom level

  void updateZoom(double zoomLevel) {
    emit(zoomLevel);
  }
}
