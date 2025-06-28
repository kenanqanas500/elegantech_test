import 'package:flutter_application_1/core/api/endpoints.dart';
import 'package:flutter_application_1/core/database/hive.dart';
import 'package:dio/dio.dart';

import 'middlewares/error_interceptor.dart';
import 'middlewares/logger_interceptor.dart';
import 'middlewares/request_interceptor.dart';

class ApiClient {
  final dio = getDio();
  ApiClient._internal();

  static final _singleton = ApiClient._internal();

  factory ApiClient() => _singleton;

  static Dio getDio() {
    var dio = Dio(BaseOptions(
      baseUrl: EndPoints.baseUrl,
      receiveTimeout: const Duration(seconds: 15),
      connectTimeout: const Duration(seconds: 15),
      sendTimeout: const Duration(seconds: 15),
      headers: {'Accept': 'application/json'},
    ));

    dio.interceptors.addAll([
      LoggerInterceptor(),
      RequestInterceptors(dio),
      ErrorInterceptor(),
    ]);

    return dio;
  }
}
