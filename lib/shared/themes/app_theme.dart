import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:unit/shared/themes/palette.dart';

import '../../core/resources/colors.dart';

class AppThemes {
  static ThemeData darkTheme = ThemeData(
    dividerTheme: const DividerThemeData(color: Colors.transparent),
    fontFamily: '29ltbukrabold',
    primaryColor: AppColors.whiteColor,
    scaffoldBackgroundColor: AppColors.blackColor,
    cardColor: AppColors.blackColor,
    splashColor: Colors.transparent,
     hintColor: AppColors.whiteColor,
     appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(size: 13.sp),
      titleSpacing: 0,
      elevation: 0,
      backgroundColor: AppColors.blackColor,
    ),
    highlightColor: Colors.black,
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: AppColors.primaryColor),
    hoverColor: Colors.transparent,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Palette.kToDark,
    ).copyWith(surface: AppColors.blackColor),
  );

  //white theme
  static ThemeData whiteTheme = ThemeData(
    hintColor: AppColors.primaryColor,
    dividerTheme: const DividerThemeData(color: Colors.transparent),
    fontFamily: '29ltbukrabold',
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.whiteColor,
    cardColor: AppColors.whiteColor,
    splashColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(size: 13.sp),
      titleSpacing: 0,
      elevation: 0,
      backgroundColor: AppColors.whiteColor,
    ),
    highlightColor: Colors.transparent,
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: AppColors.primaryColor),
    hoverColor: Colors.transparent,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Palette.kToDark,
    ).copyWith(surface: AppColors.whiteColor),
  );
}
