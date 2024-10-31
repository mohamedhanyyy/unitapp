import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../shared/model/user_model.dart';

class PreferencesHelper {
  static SharedPreferences? preferences;

  static Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }

  static Future<void> saveToken({required String token}) async {
    await preferences?.setString('token', token);
  }

  static String? get getToken {
    return preferences?.getString('token');
  }

  static Future<void> saveLang({required String lang}) async {
    await preferences?.setString('lang', lang);
  }

  static Future<void> saveTheme({required String theme}) async {
    await preferences?.setString('theme', theme);
  }
  static String get getLang {
    return preferences?.getString('lang') ?? 'ar';
  }

  static String get getTheme {
    return preferences?.getString('theme') ?? 'light';
  }
  static Future saveIsFirstOpenApp({required bool value}) async {
    await preferences?.setBool('isFirstOpenApp', value);
  }

  static bool get isFirstOpenApp {
    return preferences?.getBool('isFirstOpenApp') ?? false;
  }

  static Future saveKeepMeLogged({required bool keepMeLogged}) async {
    await preferences?.setBool('keepMeLogged', keepMeLogged);
  }

  static bool get isKeptLogged {
    return preferences?.getBool('keepMeLogged') ?? false;
  }

  static Future<void> saveIsVisitor({required bool isVisitor}) async {
    await preferences?.setBool('isVisitor', isVisitor);
  }

  static bool get isVisitor {
    return preferences?.getBool('isVisitor') ?? false;
  }

  static Future<void> saveUserModel({UserModel? userModel}) async {
    await preferences?.setString('userModel', json.encode(userModel));
  }

  static UserModel? get getUserModel {
    if (preferences?.getString('userModel') != null) {
      return UserModel.fromJson(
          json.decode('${preferences?.getString('userModel')}'));
    }
    return null;
  }

  static String get getName {
    UserModel? userModel = UserModel.fromJson(
        json.decode('${preferences?.getString('userModel')}'));
    return userModel.user?.name ?? '';
  }

  static void logOut() {
    preferences?.remove('token');
    preferences?.remove('userModel');
    preferences?.remove('keepMeLogged');
    preferences?.remove('isVisitor');
    preferences?.setBool('isVisitor', false);
  }

// static Widget get applicationFirstPage {
//   return PreferencesHelper.isKeptLogged
//       ? BottomNavigationScreen()
//       : PreferencesHelper.isFirstOpenApp
//           ? LoginScreen()
//           : IntroductionScreen();
// }
}
