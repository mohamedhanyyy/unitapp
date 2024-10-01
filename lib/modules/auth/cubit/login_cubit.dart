import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:unit/modules/auth/repository/auth_repository.dart';
import 'package:unit/shared/widgets/custom_snack_bar.dart';

import '../../../core/cubit/base_cubit_state.dart';

class LoginCubit extends Cubit<BaseCubitState> {
  final authRepository = GetIt.instance.get<AuthRepository>();

  LoginCubit() : super(BaseCubitState.initial);

  Future<void> login({required String email, required String password}) async {
    final result = await authRepository.login(email: email, password: password);
    result.fold((error) {
      CustomSnackBars.showErrorToast(title: error.msg ?? "Error Login");
      emit(BaseCubitState.error);
    }, (user) {
      debugPrint(user.user?.name);
      emit(BaseCubitState.done);
    });
  }
}
