import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart' as f;

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String name,
    required String email,
    required String avatarUrl,
    required String phoneNumber,
  }) = _User;

  factory User.fromFirebase(f.User? user) {
    if (user == null) {
      throw NullThrownError();
    }
    return User(
      id: user.uid,
      name: user.displayName ?? 'Guest',
      avatarUrl: user.photoURL ?? '',
      email: user.email ?? '',
      phoneNumber: user.phoneNumber ?? '',
    );
  }
}

extension UserX on User {
  Map<String, dynamic> toMap() => {
        'name': name,
        'avatarUrl': avatarUrl,
        'email': email,
        'phoneNumber': phoneNumber,
      };
}
