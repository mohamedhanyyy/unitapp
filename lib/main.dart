import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:unit/modules/auth/cubit/login_cubit.dart';
import 'package:unit/modules/auth/presentation/screens/login_screen.dart';
import 'package:unit/modules/auth/repository/auth_repository.dart';
import 'package:unit/services/dio_helper/dio_helper.dart';
import 'package:unit/services/navigation/navigation.dart';
import 'package:unit/services/shared_preferences/preferences_helper.dart';
import 'package:unit/shared/functions/general_functions.dart';
import 'package:unit/shared/themes/app_theme.dart';

import 'shared/functions/restart_app.dart';

final getIt = GetIt.instance;

void registerObjects() {
  getIt.registerSingleton<AuthRepository>(AuthRepository());

  getIt.registerSingleton<LoginCubit>(LoginCubit());
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
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      useInheritedMediaQuery: true,
      builder: (context, _) {
        return GestureDetector(
          onTap: GeneralFunctions.hideKeyboard,
          child: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => LoginCubit()
              )
            ],
            child: MaterialApp(
              theme: AppThemes.whiteTheme,
              debugShowCheckedModeBanner: false,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              navigatorKey: AppNavigation.navigatorKey,

              home: LoginScreen(),
            ),
          ),
        );
      },
    );
  }
}
