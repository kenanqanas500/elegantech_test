import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/core/database/hive.dart';
import 'package:meta/meta.dart';

part 'app_wrapper_state.dart';

class AppWrapperCubit extends Cubit<AppWrapperState> {
  AppWrapperCubit() : super(AppWrapperInitial());

  getAuthorisedUser() async {
    if (await HiveDB.singleTon.getToken() == null) {
      emit(NewUserStarted());
    } else {
      emit(AuthorizedUser());
    }
  }
}
