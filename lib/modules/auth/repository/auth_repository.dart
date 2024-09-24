import 'package:dartz/dartz.dart';
import 'package:unit/services/dio_helper/dio_helper.dart';
import 'package:unit/shared/const/api_consts.dart';
import 'package:unit/shared/model/user_model.dart';

import '../../../shared/model/error_model.dart';

class AuthRepository {


  Future<Either<ErrorModel, UserModel>> login(
      {required String email, required String password}) async {
    final response = await DioHelper.postData(url: EndPoints.login);
    if (response != null && response.statusCode == 200) {
      final userModel = UserModel.fromJson(response.data);
      return Right(userModel);
    } else {
      final errorModel = ErrorModel.fromJson(response?.data);
      return Left(errorModel);
    }
  }

  // Future<Either<ErrorModel, UserModel>> register(
  //     {required String email,
  //     required String password,
  //     required String name}) async {
  //   final response = await DioHelper.postData(url: EndPoints.register);
  //   if (response != null && response.statusCode == 200) {
  //     final userModel = UserModel.fromJson(response.data);
  //     return Right(userModel);
  //   } else {
  //     final errorModel = ErrorModel.fromJson(response?.data);
  //     return Left(errorModel);
  //   }
  // }
}
