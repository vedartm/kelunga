import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../models/user.dart';
import '../../repo/auth_repo.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._repo) : super(const AuthState.authenticating());

  final IAuthRepo _repo;

  void checkAuthStatus() async {
    final failureOrSuccess = await _repo.getLoggedInUser();
    emit(failureOrSuccess.fold(
      (l) => const AuthState.unauthenticated(),
      (r) => AuthState.authenticated(r),
    ));
  }

  Future<bool> signInWithGoogle() async {
    emit(const AuthState.authenticating());
    final user = await _repo.signInWithGoogle();
    emit(user.fold(
      (l) => const AuthState.unauthenticated(),
      (r) => AuthState.authenticated(r),
    ));
    return user.fold((l) => false, (r) => true);
  }

  Future<void> signOut() async {
    await _repo.signOut();
  }
}
