import 'package:flutter_bloc/flutter_bloc.dart';

class MapZoomCubit extends Cubit<double> {
  MapZoomCubit() : super(0);

  void updateZoom(double zoomLevel) {
    emit(zoomLevel);
  }
}
