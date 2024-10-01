import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:unit/shared/themes/palette.dart';

import '../../core/resources/colors.dart';

// import '../resources/colors.dart';

class AppThemes {
  static ThemeData whiteTheme = ThemeData(
    dividerTheme: const DividerThemeData(color: Colors.transparent),
    fontFamily: '29ltbukrabold',
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: const Color(0xffF9FAFB),
    cardColor: AppColors.whiteColor,
    splashColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(size: 13.sp),
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: const Color(0xffF9FAFB),
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
