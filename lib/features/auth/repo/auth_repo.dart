import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../core/error/failures.dart';
import '../models/user.dart' as m;

abstract class IAuthRepo {
  Future<Either<Failure, m.User>> getLoggedInUser();

  Future<Either<Failure, m.User>> signInWithGoogle();

  Future<Either<Failure, Unit>> signOut();
}

@LazySingleton(as: IAuthRepo)
class AuthRepo implements IAuthRepo {
  final Logger _logger;
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseFirestore _firestore;

  AuthRepo(
    this._logger,
    this._firebaseAuth,
    this._googleSignIn,
    this._firestore,
  );

  @override
  Future<Either<Failure, m.User>> getLoggedInUser() async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) {
        return Left(const Failure.unauthenticated());
      }
      // final model = await _gqlDataSource.getUser(user.uid);
      final model = m.User.fromFirebase(user);
      return Right(model);
    } catch (e) {
      return Left(const Failure.server());
    }
  }

  @override
  Future<Either<Failure, m.User>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();

      _logger.d(googleUser?.email);

      if (googleUser == null) {
        return Left(Failure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      final user = await _signInWithCredential(authCredential);

      await _firestore.collection('users').doc(user.id).set(user.toMap());
      return Right(user);
    } catch (e) {
      _logger.e(e);
      return Left(const Failure.server());
    }
  }

  @override
  Future<Either<Failure, Unit>> signOut() async {
    try {
      await _firebaseAuth.signOut();
      return Right(unit);
    } on Exception {
      return Left(const Failure.server());
    }
  }

  Future<m.User> _signInWithCredential(AuthCredential authCredential) async {
    final result = await _firebaseAuth.signInWithCredential(authCredential);
    return m.User.fromFirebase(result.user);
  }
}
