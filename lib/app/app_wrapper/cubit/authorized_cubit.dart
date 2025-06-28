import 'package:bloc/bloc.dart';
// import 'package:flutter_application_1/app/global/app_texts/app_texts.dart';
import 'package:flutter_application_1/core/database/hive.dart';
import 'package:meta/meta.dart';

part 'authorized_state.dart';

class AuthorizedCubit extends Cubit<AuthorizedState> {
  AuthorizedCubit() : super(AuthorizedInitial());

  // serverIpIsWrong() async {
  //   emit(EmptyServerUrl(message: T.pleaseMakeSureIpIsCorrect));
  // }

  unauthorizedUser() async {
    clearToken();
    emit(UnAuthorizedUser());
  }

  forbiddedUser() {
    clearToken();
    emit(ForbidderUser());
  }

  logout() {
    clearToken();
    emit(Logout());
  }

  void clearToken() async {
    await HiveDB.singleTon.clearToken();
  }

  loading({required String api}) {
    emit(Loading(api: api));
  }
}
