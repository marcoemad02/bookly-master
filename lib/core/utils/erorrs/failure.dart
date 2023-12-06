import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

abstract class failure {
  final String message;

  failure(this.message);
}

class serverFailure extends failure {
  serverFailure(super.message);

  factory serverFailure.fromDioError(DioError e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return serverFailure('sorry connection is time out ');
      case DioExceptionType.sendTimeout:
        return serverFailure('sorry send is time out ');
      case DioExceptionType.receiveTimeout:
        return serverFailure('sorry recived is time out ');
      case DioExceptionType.badCertificate:
        return serverFailure('sorry connection is BAD ');
      case DioExceptionType.badResponse:
        return serverFailure.fromResponse(
            e.response!.statusCode!, e.response!.data);
      case DioExceptionType.cancel:
        return serverFailure('sorry connection is CANCLED ');
      case DioExceptionType.connectionError:
        return serverFailure('sorry connection ERROR ');
      case DioExceptionType.unknown:
        return serverFailure('sorry try again ');
    }
  }

  factory serverFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 404) {
      return serverFailure('404 error your request not found');
    } else if (statusCode == 500) {
      return serverFailure('500 error , server error');
    } else {
      return serverFailure('idont know what the error, plz try again');
    }
  }
}
