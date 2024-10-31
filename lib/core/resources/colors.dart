import 'dart:ui';

import 'package:unit/services/shared_preferences/preferences_helper.dart';

class AppColors {
  static const primaryColor = Color(0xff233663);
  static const greenColor = Color(0xff3AA980);
  static const lightGreenColor = Color(0xff8ECFB9);
  static const pinkColor = Color(0xffED1F4F);

  static const whiteColor = Color(0xffffffff);
  static const greyProfileText = Color(0xff595A5B);
  static const blackColor = Color(0xff000000);
  static const lightGrey = Color(0xff2D2E2E);
  static const greyText = Color(0xff747677);
  static const grey = Color(0xffC3C7CA);
  static const greyTextField = Color(0xffF2F2F2);
  static const lightPurple = Color(0xffDFE8FF);
  static const blue = Color(0xff0167FF);
  static const lightBlue = Color(0xff3B9BD5);
  static const borderColor = Color(0xffDCE0E4);

  ///
  ///

  static Color get getGreyTextColor {
    if (PreferencesHelper.getTheme == 'light') {
      return greyProfileText;
    }
    return whiteColor;
  }

  static Color get getBackgroundColor {
    if (PreferencesHelper.getTheme == 'light') {
      return blackColor;
    }
    return whiteColor;
  }
  static Color get getBottomNavigationBarColor {
    if (PreferencesHelper.getTheme == 'light') {
      return primaryColor;
    }
    return whiteColor;
  }
}
