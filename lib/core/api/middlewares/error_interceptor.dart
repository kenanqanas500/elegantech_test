import 'dart:developer';

import 'package:flutter_application_1/app/app_wrapper/cubit/authorized_cubit.dart';
import 'package:flutter_application_1/main.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../custom_errors.dart' as custom_errors;

class ErrorInterceptor extends Interceptor {
  // final _storage = SecureStorage();

  ErrorInterceptor();

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log("error type => ${err.type}");
    // final context = Captain.navigatorKey.currentContext;
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        // case DioExceptionType.connectionError:
        // Captain.navigatorKey.currentState!.context.read<AuthorizedCubit>().serverIpIsWrong();
        throw custom_errors.DeadlineExceededException(err.requestOptions);
      case DioExceptionType.connectionError:
      // if (context != null) {
      //   context.read<AuthorizedCubit>().serverIpIsWrong();
      // }
      // if (Captain.isLoadingFromChangeIp) {
      //   throw custom_errors.InternalServerErrorException(err.requestOptions, err.response);
      // } else {
      //   return;
      // }
      case DioExceptionType.badResponse:
        switch (err.response?.statusCode) {
          case 400:
            // throw InvalidLogin(err.requestOptions, err.response);
            throw custom_errors.BadRequestException(err.requestOptions, err.response);
          case 401:
            // if (context != null) {
            //   context.read<AuthorizedCubit>().unauthorizedUser();
            // }
            return;
          // Captain.navigatorKey.currentState!.context.read<AuthorizedCubit>().unauthorizedUser();
          // throw custom_errors.UnauthorizedException(err.requestOptions, err.response);
          case 403:
            // if (context != null) {
            //   context.read<AuthorizedCubit>().forbiddedUser();
            // }
            return;
          // Captain.navigatorKey.currentState!.context.read<AuthorizedCubit>().forbiddedUser();
          // throw custom_errors.UnauthorizedException(err.requestOptions, err.response);
          case 404:
            throw custom_errors.NotFoundException(err.requestOptions, err.response);
          case 409:
            throw custom_errors.ConflictException(err.requestOptions, err.response);
          case 500:
            throw custom_errors.InternalServerErrorException(err.requestOptions, err.response);
          default:
            throw custom_errors.InternalServerErrorException(err.requestOptions, err.response);
        }
      // break;
      case DioExceptionType.cancel:
        break;
      case DioExceptionType.unknown:
        throw custom_errors.NoInternetConnectionException(err.requestOptions);
      default:
        throw custom_errors.NoInternetConnectionException(err.requestOptions);
    }

    return handler.next(err);
  }
}
