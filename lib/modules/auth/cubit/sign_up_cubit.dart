import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:unit/modules/auth/repository/auth_repository.dart';
import 'package:unit/shared/cubit/base_cubit_state.dart';
import 'package:unit/shared/widgets/custom_snack_bar.dart';

class SignUpCubit extends Cubit<BaseCubitState> {
  final authRepository = GetIt.instance.get<AuthRepository>();

  SignUpCubit() : super(BaseCubitState.initial);
  Future<void> signUp(
      {required String name,
      required String email,
      required String password}) async {
    final result = await authRepository.signUp(
        email: email, password: password, name: name);
    result.fold((error) {
      CustomSnackBars.showErrorToast(title: error.msg ?? "Error Register");
      emit(BaseCubitState.error);
    }, (user) {
      debugPrint(user.user?.name);
      emit(BaseCubitState.done);
    });
  }
}
