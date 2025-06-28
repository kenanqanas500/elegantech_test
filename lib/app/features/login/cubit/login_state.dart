part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginLoaded extends LoginState {
  final LoginResponse loginResponse;
  LoginLoaded({required this.loginResponse});
}

class LoginError extends LoginState {
  final String error;
  LoginError({required this.error});
}
