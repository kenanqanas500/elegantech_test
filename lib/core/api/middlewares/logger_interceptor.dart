import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

enum ColorStyle { orange, green, red }

extension ConsoleColor on ColorStyle {
  String get colorCode {
    switch (this) {
      case ColorStyle.orange:
        return '\x1B[38;5;214m'; // Orange
      case ColorStyle.green:
        return '\x1B[32m'; // Green
      case ColorStyle.red:
        return '\x1B[31m'; // Reset
    }
  }
}

class LoggerInterceptor extends Interceptor {
  final ColorStyle requestStyle;
  final ColorStyle responseStyle;
  final ColorStyle errorStyle;
  final bool logRequestHeaders;
  final bool logResponseHeaders;
  final bool logRequestTimeout;

  final Logger logger = Logger();

  LoggerInterceptor({
    this.requestStyle = ColorStyle.orange,
    this.responseStyle = ColorStyle.green,
    this.errorStyle = ColorStyle.red,
    this.logRequestHeaders = true,
    this.logResponseHeaders = true,
    this.logRequestTimeout = true,
  });

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final requestLog = StringBuffer();

    if (logRequestHeaders) {
      final fullUrl = options.uri.toString();
      requestLog.writeln(
          '${requestStyle.colorCode}Request: ${options.method} $fullUrl, BaseUrl:${options.baseUrl}\x1B[0m');
      requestLog.writeln('${requestStyle.colorCode}Headers: ${options.headers}\x1B[0m');
    }

    if (logRequestTimeout) {
      requestLog.writeln('${requestStyle.colorCode}Timeout: ${options.receiveTimeout} ms\x1B[0m');
    }

    // 🔍 Log FormData fields and files
    if (options.data is FormData) {
      final formData = options.data as FormData;

      if (formData.fields.isNotEmpty) {
        requestLog.writeln('${requestStyle.colorCode}Body: Form Data Fields:\x1B[0m');
        for (var field in formData.fields) {
          requestLog.writeln('${requestStyle.colorCode}${field.key}: ${field.value}\x1B[0m');
        }
      }

      if (formData.files.isNotEmpty) {
        requestLog.writeln('${requestStyle.colorCode}Form Data Files:\x1B[0m');
        for (var file in formData.files) {
          final fileName = file.value.filename ?? 'unknown filename';
          requestLog.writeln('${requestStyle.colorCode}${file.key}: $fileName\x1B[0m');
        }
      }
    } else if (options.data is List) {
      final listData = options.data as List;
      requestLog.writeln('${requestStyle.colorCode}Body: List Data:\x1B[0m');
      for (int i = 0; i < listData.length; i++) {
        requestLog.writeln('${requestStyle.colorCode}[$i]: ${listData[i]}\x1B[0m');
      }
    } else if (options.data is Map) {
      final mapData = options.data as Map;
      requestLog.writeln('${requestStyle.colorCode}Body: Map Data:\x1B[0m');
      mapData.forEach((key, value) {
        requestLog.writeln('${requestStyle.colorCode}$key: $value\x1B[0m');
      });
    }
    logger.i(requestLog.toString());
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final responseLog = StringBuffer()
      ..writeln(
          '${responseStyle.colorCode}Response: ${response.statusCode} ${response.requestOptions.uri}\x1B[0m')
      ..write('${responseStyle.colorCode}Body: ${response.data}');

    if (logResponseHeaders) {
      responseLog.writeln('${responseStyle.colorCode}Headers: ${response.headers}\x1B[0m');
    }

    logger.i(responseLog.toString());
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final errorLog = StringBuffer()
      ..writeln('${errorStyle.colorCode}Error: ${err.message}\x1B[0m')
      ..writeln('${errorStyle.colorCode}Status code : ${err.response?.statusCode}')
      ..writeln('${errorStyle.colorCode}Path: ${err.requestOptions.uri}\x1B[0m');

    if (err.response != null) {
      errorLog.writeln('${errorStyle.colorCode}Response: ${err.response?.data}\x1B[0m');
      if (logResponseHeaders) {
        errorLog.writeln('${errorStyle.colorCode}Headers: ${err.response?.headers}\x1B[0m');
      }
    }

    logger.e(errorLog.toString());
    handler.next(err);
  }
}
