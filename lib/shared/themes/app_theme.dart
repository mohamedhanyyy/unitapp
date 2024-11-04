import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:unit/shared/themes/palette.dart';

import '../../core/resources/colors.dart';

class AppThemes {
  //white theme
  static ThemeData whiteTheme = ThemeData(
    hintColor: AppColors.primaryColor,
    dividerTheme: const DividerThemeData(color: Colors.transparent),
    fontFamily: '29ltbukrabold',
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.whiteColor,
    cardColor: AppColors.whiteColor,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: AppColors.primaryColor,
        fontFamily: '29ltbukrabold',
      ),
      titleMedium: TextStyle(
        color: AppColors.primaryColor,
        fontFamily: '29ltbukrabold',
      ),
      titleSmall: TextStyle(
        color: AppColors.primaryColor,
        fontFamily: '29ltbukrabold',
      ),
      bodyLarge: TextStyle(
        color: AppColors.primaryColor,
        fontFamily: '29ltbukrabold',
      ),
      bodyMedium: TextStyle(
        color: AppColors.primaryColor,
        fontFamily: '29ltbukrabold',
      ),
      bodySmall: TextStyle(
        color: AppColors.primaryColor,
        fontFamily: '29ltbukrabold',
      ),
    ),
    splashColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(size: 13.sp),
      titleSpacing: 0,
      elevation: 0,
      backgroundColor: AppColors.whiteColor,
    ),
    secondaryHeaderColor: AppColors.whiteColor,
    highlightColor: Colors.transparent,
    textSelectionTheme:
    const TextSelectionThemeData(cursorColor: AppColors.primaryColor),
    hoverColor: Colors.transparent,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Palette.kToDark,
    ).copyWith(surface: AppColors.whiteColor),
  );
  //dark theme
  static ThemeData darkTheme = ThemeData(
    dividerTheme: const DividerThemeData(color: Colors.transparent),
    fontFamily: '29ltbukrabold',
    primaryColor: AppColors.whiteColor,
    scaffoldBackgroundColor: AppColors.blackColor,
    cardColor: AppColors.blackColor,
    splashColor: Colors.transparent,
    hintColor: AppColors.whiteColor,
    textTheme: const TextTheme(
        titleLarge: TextStyle(
          color: Colors.white,
          fontFamily: '29ltbukrabold',
        ),
        titleMedium: TextStyle(
          color: Colors.white,
        ),
        titleSmall: TextStyle(
          color: Colors.white,
          fontFamily: '29ltbukrabold',
        ),
        bodyLarge: TextStyle(
          color: Colors.white,
        ),
        bodyMedium: TextStyle(
          color: Colors.white,
        ),
        bodySmall: TextStyle(
          color: Colors.white,
        )),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(size: 13.sp),
      titleSpacing: 0,
      elevation: 0,
      backgroundColor: AppColors.blackColor,
    ),
    secondaryHeaderColor: AppColors.blackColor,
    highlightColor: Colors.black,
    textSelectionTheme:

        const TextSelectionThemeData(cursorColor: AppColors.primaryColor),
    hoverColor: Colors.transparent,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Palette.kToDark,
    ).copyWith(surface: AppColors.blackColor),
  );
}
