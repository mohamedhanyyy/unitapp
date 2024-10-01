import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:unit/services/shared_preferences/preferences_helper.dart';

import '../../core/const/api_consts.dart';
// import 'package:unit/shared/const/api_consts.dart';

class DioHelper {
  static BaseOptions opts = BaseOptions(
    baseUrl: EndPoints.baseUrl,
    headers: {
      'lang': PreferencesHelper.getLang,
    },
    receiveDataWhenStatusError: true,
    followRedirects: false,
    validateStatus: (status) {
      return status! <= 500;
    },
  );

  static Dio init() => Dio(opts);

  static Dio? dio = init();

  static Future<Response?> postData(
      {required String url, Map<String, dynamic>? data}) async {
    String? token = PreferencesHelper.getToken;
    try {
      final response = await dio?.post(url,
          options: Options(headers: {'Authorization': 'Bearer $token'}),
          data: data);
      log('RESPONSE STATUS CODE:${response?.statusCode}');
      log('RESPONSE DATA:${response?.data}');
      log('RESPONSE REQUEST OPTIONS:${response?.requestOptions.data}');

      return response;
    } catch (e) {
      log('$e');

      return e is DioException ? e.response : null;
    }
  }

  static Future<Response?> getData(
      {required String url, Map<String, dynamic>? data}) async {
    String? token = PreferencesHelper.getToken;
    try {
      final response = await dio?.get(url,
          options: Options(headers: {'Authorization': 'Bearer $token'}),
          data: data);
      log('RESPONSE STATUS CODE:${response?.statusCode}');
      log('RESPONSE DATA:${response?.data}');
      log('RESPONSE REQUEST OPTIONS:${response?.requestOptions.data}');

      return response;
    } catch (e) {
      log('$e');

      return e is DioException ? e.response : null;
    }
  }
}
