import 'package:dio/dio.dart';
import 'package:flutter_application_1/app/features/login/model/login_response.dart';
import 'package:flutter_application_1/core/api/api_client.dart';
import 'package:flutter_application_1/core/api/endpoints.dart';

class LoginRepo {
  Future<LoginResponse> login({required Map<String, dynamic> loginData}) async {
    final res = await ApiClient.getDio()
        .post(EndPoints.login, data: loginData, options: Options(extra: {'token': false}));
    return LoginResponse.fromJson(res.data['data']);
  }
}
