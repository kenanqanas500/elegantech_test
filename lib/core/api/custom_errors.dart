import 'package:flutter_application_1/main.dart';
import 'package:dio/dio.dart';

class BadRequestException extends DioException {
  BadRequestException(RequestOptions r, Response<dynamic>? response)
      : super(requestOptions: r, response: response);

  @override
  String toString() {
    return response!.data["error"];
    // return 'Invalid request';
  }
}

class InternalServerErrorException extends DioException {
  InternalServerErrorException(RequestOptions r, Response<dynamic>? response)
      : super(requestOptions: r, response: response);

  @override
  String toString() {
    // return Captain.navigatorKey.currentState!.context.translate(T.serverE);
    return "Server Error";
    // return T.serverE;
  }
}

class ConflictException extends DioException {
  ConflictException(RequestOptions r, Response<dynamic>? response)
      : super(requestOptions: r, response: response);

  @override
  String toString() {
    return response!.data["message"];
    // return 'Conflict occured';
  }
}

class UnauthorizedException extends DioException {
  UnauthorizedException(RequestOptions r, Response<dynamic>? response)
      : super(requestOptions: r, response: response);

  @override
  String toString() {
    return response!.data["message"];
    // return 'Access denied';
  }
}

class NotFoundException extends DioException {
  NotFoundException(RequestOptions r, Response<dynamic>? response)
      : super(requestOptions: r, response: response);

  @override
  String toString() {
    return response!.data["message"];
    // return 'Sorry, this record no longer exists';
  }
}

class NoInternetConnectionException extends DioException {
  NoInternetConnectionException(RequestOptions r) : super(requestOptions: r);
  @override
  String toString() {
    // return Captain.navigatorKey.currentState!.context.translate(T.internetE);
    return "No Internet";
    // return T.internetE;
  }
}

class DeadlineExceededException extends DioException {
  DeadlineExceededException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return "Connection Error";
  }
}

class CustomException extends DioException {
  CustomException(RequestOptions r, Response<dynamic>? response)
      : super(requestOptions: r, response: response);
  @override
  String toString() {
    return response!.data["message"];
    // return 'Custom Exception';
  }
}

class InvalidLogin extends DioException {
  InvalidLogin(RequestOptions r, Response<dynamic>? response) : super(requestOptions: r, response: response);

  @override
  String toString() {
    return 'Invalid Login';
  }
}

class InvalidPermission extends DioException {
  InvalidPermission(RequestOptions r, Response<dynamic>? response)
      : super(requestOptions: r, response: response);
  @override
  String toString() {
    return 'Invalid Permission';
  }
}

class IncorrectOldPassword extends DioException {
  IncorrectOldPassword(RequestOptions r, Response<dynamic>? response)
      : super(requestOptions: r, response: response);
  @override
  String toString() {
    return 'Incorrect old password';
  }
}

class InvalidData extends DioException {
  InvalidData(RequestOptions r, Response<dynamic>? response) : super(requestOptions: r, response: response);
  @override
  String toString() {
    return 'Incorrect dates, try again with different dates';
  }
}
