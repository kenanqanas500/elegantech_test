part of 'app_wrapper_cubit.dart';

@immutable
sealed class AppWrapperState {}

final class AppWrapperInitial extends AppWrapperState {}

final class AuthorizedUser extends AppWrapperState {}

final class NewUserStarted extends AppWrapperState {}
