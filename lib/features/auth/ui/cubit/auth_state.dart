part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticated(User user) = _Authenticated;

  const factory AuthState.authenticating() = _Authenticating;

  const factory AuthState.unauthenticated() = _Unauthenticated;
}
