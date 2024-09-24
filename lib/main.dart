import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:unit/modules/auth/repository/auth_repository.dart';
import 'package:unit/services/dio_helper/dio_helper.dart';
import 'package:unit/services/shared_preferences/preferences_helper.dart';
import 'package:unit/shared/functions/general_functions.dart';

import 'shared/functions/restart_app.dart';

final getIt = GetIt.instance;


void registerObjects() {
  //TODO: repository
  getIt.registerSingleton<AuthRepository>(AuthRepository());



}
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  registerObjects();
  GeneralFunctions.setPreferredOrientation();

  PreferencesHelper.init().then((value) {
    runApp(
      EasyLocalization(
        supportedLocales: const [Locale('ar'), Locale('en')],
        startLocale: Locale(PreferencesHelper.getLang),
        path: 'assets/translations',
        child: const RestartWidget(child: MyApp()),
      ),
    );
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}
