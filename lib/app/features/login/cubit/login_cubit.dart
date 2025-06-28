import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/app/features/login/model/login_response.dart';
import 'package:flutter_application_1/app/features/login/repo/login_repo.dart';
// import 'package:flutter_application_1/app/global/app_texts/app_texts.dart';
import 'package:flutter_application_1/core/database/hive.dart';
import 'package:flutter_application_1/core/utils/md5_hash_util.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo repo;
  LoginCubit({required this.repo}) : super(LoginInitial());

  login({required String phoneNumber, required String password}) async {
    emit(LoginLoading());
    try {
      await repo.login(loginData: {
        "phone_number": phoneNumber,
        'password': password,
        "firebase_token": "1412312312"
      } /* FormData.fromMap({"userName": userName, 'userPassword': password}) */).then((data) async {
        await HiveDB.singleTon.setToken(data.accessToken);
        await HiveDB.singleTon.setUser(data.user);

        emit(LoginLoaded(loginResponse: data));
      });
    } on DioException catch (exception) {
      // log(exception.toString());
      emit(LoginError(error: exception.toString()));
    }
  }
}
