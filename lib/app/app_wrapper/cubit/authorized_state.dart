part of 'authorized_cubit.dart';

@immutable
sealed class AuthorizedState {}

final class AuthorizedInitial extends AuthorizedState {}

final class UnAuthorizedUser extends AuthorizedState {}

final class ForbidderUser extends AuthorizedState {}

final class Logout extends AuthorizedState {}

final class EmptyServerUrl extends AuthorizedState {
  final String message;
  EmptyServerUrl({required this.message});
}

final class Loading extends AuthorizedState {
  final String api;
  Loading({required this.api});
}
