import 'package:unit/core/error/server_error_code.dart';

abstract class Failure {}

class ServerFailure implements Failure {
  final ServerErrorCode errorCode;
  final String message;

  ServerFailure({required this.errorCode, this.message = ''});
}

class NetworkFailure implements Failure {
  final bool connectionTimeOut;

  NetworkFailure({this.connectionTimeOut = false});
}

class LocalAuthFailure implements Failure {}
