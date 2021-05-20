// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

  CacheFailure cache() {
    return const CacheFailure();
  }

  ServerFailure server() {
    return const ServerFailure();
  }

  Unauthenticated unauthenticated() {
    return const Unauthenticated();
  }

  CancelledByUser cancelledByUser() {
    return const CancelledByUser();
  }
}

/// @nodoc
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cache,
    required TResult Function() server,
    required TResult Function() unauthenticated,
    required TResult Function() cancelledByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cache,
    TResult Function()? server,
    TResult Function()? unauthenticated,
    TResult Function()? cancelledByUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CacheFailure value) cache,
    required TResult Function(ServerFailure value) server,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(CancelledByUser value) cancelledByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CacheFailure value)? cache,
    TResult Function(ServerFailure value)? server,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(CancelledByUser value)? cancelledByUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class $CacheFailureCopyWith<$Res> {
  factory $CacheFailureCopyWith(
          CacheFailure value, $Res Function(CacheFailure) then) =
      _$CacheFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$CacheFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $CacheFailureCopyWith<$Res> {
  _$CacheFailureCopyWithImpl(
      CacheFailure _value, $Res Function(CacheFailure) _then)
      : super(_value, (v) => _then(v as CacheFailure));

  @override
  CacheFailure get _value => super._value as CacheFailure;
}

/// @nodoc

class _$CacheFailure implements CacheFailure {
  const _$CacheFailure();

  @override
  String toString() {
    return 'Failure.cache()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CacheFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cache,
    required TResult Function() server,
    required TResult Function() unauthenticated,
    required TResult Function() cancelledByUser,
  }) {
    return cache();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cache,
    TResult Function()? server,
    TResult Function()? unauthenticated,
    TResult Function()? cancelledByUser,
    required TResult orElse(),
  }) {
    if (cache != null) {
      return cache();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CacheFailure value) cache,
    required TResult Function(ServerFailure value) server,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(CancelledByUser value) cancelledByUser,
  }) {
    return cache(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CacheFailure value)? cache,
    TResult Function(ServerFailure value)? server,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(CancelledByUser value)? cancelledByUser,
    required TResult orElse(),
  }) {
    if (cache != null) {
      return cache(this);
    }
    return orElse();
  }
}

abstract class CacheFailure implements Failure {
  const factory CacheFailure() = _$CacheFailure;
}

/// @nodoc
abstract class $ServerFailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(
          ServerFailure value, $Res Function(ServerFailure) then) =
      _$ServerFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(
      ServerFailure _value, $Res Function(ServerFailure) _then)
      : super(_value, (v) => _then(v as ServerFailure));

  @override
  ServerFailure get _value => super._value as ServerFailure;
}

/// @nodoc

class _$ServerFailure implements ServerFailure {
  const _$ServerFailure();

  @override
  String toString() {
    return 'Failure.server()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cache,
    required TResult Function() server,
    required TResult Function() unauthenticated,
    required TResult Function() cancelledByUser,
  }) {
    return server();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cache,
    TResult Function()? server,
    TResult Function()? unauthenticated,
    TResult Function()? cancelledByUser,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CacheFailure value) cache,
    required TResult Function(ServerFailure value) server,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(CancelledByUser value) cancelledByUser,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CacheFailure value)? cache,
    TResult Function(ServerFailure value)? server,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(CancelledByUser value)? cancelledByUser,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class ServerFailure implements Failure {
  const factory ServerFailure() = _$ServerFailure;
}

/// @nodoc
abstract class $UnauthenticatedCopyWith<$Res> {
  factory $UnauthenticatedCopyWith(
          Unauthenticated value, $Res Function(Unauthenticated) then) =
      _$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnauthenticatedCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $UnauthenticatedCopyWith<$Res> {
  _$UnauthenticatedCopyWithImpl(
      Unauthenticated _value, $Res Function(Unauthenticated) _then)
      : super(_value, (v) => _then(v as Unauthenticated));

  @override
  Unauthenticated get _value => super._value as Unauthenticated;
}

/// @nodoc

class _$Unauthenticated implements Unauthenticated {
  const _$Unauthenticated();

  @override
  String toString() {
    return 'Failure.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cache,
    required TResult Function() server,
    required TResult Function() unauthenticated,
    required TResult Function() cancelledByUser,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cache,
    TResult Function()? server,
    TResult Function()? unauthenticated,
    TResult Function()? cancelledByUser,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CacheFailure value) cache,
    required TResult Function(ServerFailure value) server,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(CancelledByUser value) cancelledByUser,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CacheFailure value)? cache,
    TResult Function(ServerFailure value)? server,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(CancelledByUser value)? cancelledByUser,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements Failure {
  const factory Unauthenticated() = _$Unauthenticated;
}

/// @nodoc
abstract class $CancelledByUserCopyWith<$Res> {
  factory $CancelledByUserCopyWith(
          CancelledByUser value, $Res Function(CancelledByUser) then) =
      _$CancelledByUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$CancelledByUserCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $CancelledByUserCopyWith<$Res> {
  _$CancelledByUserCopyWithImpl(
      CancelledByUser _value, $Res Function(CancelledByUser) _then)
      : super(_value, (v) => _then(v as CancelledByUser));

  @override
  CancelledByUser get _value => super._value as CancelledByUser;
}

/// @nodoc

class _$CancelledByUser implements CancelledByUser {
  const _$CancelledByUser();

  @override
  String toString() {
    return 'Failure.cancelledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cache,
    required TResult Function() server,
    required TResult Function() unauthenticated,
    required TResult Function() cancelledByUser,
  }) {
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cache,
    TResult Function()? server,
    TResult Function()? unauthenticated,
    TResult Function()? cancelledByUser,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CacheFailure value) cache,
    required TResult Function(ServerFailure value) server,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(CancelledByUser value) cancelledByUser,
  }) {
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CacheFailure value)? cache,
    TResult Function(ServerFailure value)? server,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(CancelledByUser value)? cancelledByUser,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser implements Failure {
  const factory CancelledByUser() = _$CancelledByUser;
}
