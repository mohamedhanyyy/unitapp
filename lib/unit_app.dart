import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:unit/modules/auth/cubit/sign_up_cubit.dart';
import 'package:unit/modules/home/presentation/screens/home_screen.dart';
import 'package:unit/services/navigation/navigation.dart';
import 'package:unit/shared/functions/general_functions.dart';
import 'package:unit/shared/themes/app_theme.dart';

import 'modules/auth/cubit/login_cubit.dart';

class UnitApp extends StatelessWidget {
  const UnitApp({super.key});

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
              BlocProvider(create: (context) => LoginCubit()),
              BlocProvider(create: (context) => SignUpCubit()),
            ],
            child: MaterialApp(
              theme: AppThemes.whiteTheme,
              debugShowCheckedModeBanner: false,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              navigatorKey: AppNavigation.navigatorKey,
              home: HomeScrren(),
            ),
          ),
        );
      },
    );
  }
}
