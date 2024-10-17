import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:unit/modules/auth/cubit/login_cubit.dart';
import 'package:unit/modules/auth/cubit/sign_up_cubit.dart';
import 'package:unit/modules/auth/repository/auth_repository.dart';
import 'package:unit/modules/orders/cubit/orders_cubit.dart';
import 'package:unit/services/dio_helper/dio_helper.dart';
import 'package:unit/services/shared_preferences/preferences_helper.dart';
import 'package:unit/shared/functions/general_functions.dart';
import 'package:unit/unit_app.dart';

import 'shared/functions/restart_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  registerObjects();
  GeneralFunctions.setPreferredOrientation();

  PreferencesHelper.init().then((_) {
    runApp(
      EasyLocalization(
        supportedLocales: const [Locale('ar'), Locale('en')],
        // startLocale: Locale('eb'),
        startLocale: Locale(PreferencesHelper.getLang),
        path: 'assets/translations',
        child: const RestartWidget(child: UnitApp()),
      ),
    );
  });
}

void registerObjects() {
  final getIt = GetIt.instance;

  //register repository
  getIt.registerSingleton<AuthRepository>(AuthRepository());

  //register cubit
  getIt.registerSingleton<LoginCubit>(LoginCubit());
  getIt.registerSingleton<SignUpCubit>(SignUpCubit());
  getIt.registerSingleton<OrdersCubit>(OrdersCubit());
}
