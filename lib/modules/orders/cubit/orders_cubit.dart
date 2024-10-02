import 'package:flutter_bloc/flutter_bloc.dart';

class OrdersCubit extends Cubit<int?> {
  OrdersCubit() : super(null);

  int mainCatIndex = 0;
  int subCatIndex = 0;

  changeMainIndex(index) {
    mainCatIndex = index;
    emit(index);
  }

  changeSubIndex(index) {
    mainCatIndex = index;
  }
}
