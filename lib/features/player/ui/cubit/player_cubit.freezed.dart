// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'player_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlayerStateTearOff {
  const _$PlayerStateTearOff();

  _PlayerState call(
      {required Option<Story> currentAudio,
      required bool isPlaying,
      required bool isLoading,
      required Option<Duration> position,
      required Option<Duration> bufferedPosition}) {
    return _PlayerState(
      currentAudio: currentAudio,
      isPlaying: isPlaying,
      isLoading: isLoading,
      position: position,
      bufferedPosition: bufferedPosition,
    );
  }
}

/// @nodoc
const $PlayerState = _$PlayerStateTearOff();

/// @nodoc
mixin _$PlayerState {
  Option<Story> get currentAudio => throw _privateConstructorUsedError;
  bool get isPlaying => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Duration> get position => throw _privateConstructorUsedError;
  Option<Duration> get bufferedPosition => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerStateCopyWith<PlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerStateCopyWith<$Res> {
  factory $PlayerStateCopyWith(
          PlayerState value, $Res Function(PlayerState) then) =
      _$PlayerStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Story> currentAudio,
      bool isPlaying,
      bool isLoading,
      Option<Duration> position,
      Option<Duration> bufferedPosition});
}

/// @nodoc
class _$PlayerStateCopyWithImpl<$Res> implements $PlayerStateCopyWith<$Res> {
  _$PlayerStateCopyWithImpl(this._value, this._then);

  final PlayerState _value;
  // ignore: unused_field
  final $Res Function(PlayerState) _then;

  @override
  $Res call({
    Object? currentAudio = freezed,
    Object? isPlaying = freezed,
    Object? isLoading = freezed,
    Object? position = freezed,
    Object? bufferedPosition = freezed,
  }) {
    return _then(_value.copyWith(
      currentAudio: currentAudio == freezed
          ? _value.currentAudio
          : currentAudio // ignore: cast_nullable_to_non_nullable
              as Option<Story>,
      isPlaying: isPlaying == freezed
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Option<Duration>,
      bufferedPosition: bufferedPosition == freezed
          ? _value.bufferedPosition
          : bufferedPosition // ignore: cast_nullable_to_non_nullable
              as Option<Duration>,
    ));
  }
}

/// @nodoc
abstract class _$PlayerStateCopyWith<$Res>
    implements $PlayerStateCopyWith<$Res> {
  factory _$PlayerStateCopyWith(
          _PlayerState value, $Res Function(_PlayerState) then) =
      __$PlayerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Story> currentAudio,
      bool isPlaying,
      bool isLoading,
      Option<Duration> position,
      Option<Duration> bufferedPosition});
}

/// @nodoc
class __$PlayerStateCopyWithImpl<$Res> extends _$PlayerStateCopyWithImpl<$Res>
    implements _$PlayerStateCopyWith<$Res> {
  __$PlayerStateCopyWithImpl(
      _PlayerState _value, $Res Function(_PlayerState) _then)
      : super(_value, (v) => _then(v as _PlayerState));

  @override
  _PlayerState get _value => super._value as _PlayerState;

  @override
  $Res call({
    Object? currentAudio = freezed,
    Object? isPlaying = freezed,
    Object? isLoading = freezed,
    Object? position = freezed,
    Object? bufferedPosition = freezed,
  }) {
    return _then(_PlayerState(
      currentAudio: currentAudio == freezed
          ? _value.currentAudio
          : currentAudio // ignore: cast_nullable_to_non_nullable
              as Option<Story>,
      isPlaying: isPlaying == freezed
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Option<Duration>,
      bufferedPosition: bufferedPosition == freezed
          ? _value.bufferedPosition
          : bufferedPosition // ignore: cast_nullable_to_non_nullable
              as Option<Duration>,
    ));
  }
}

/// @nodoc

class _$_PlayerState implements _PlayerState {
  const _$_PlayerState(
      {required this.currentAudio,
      required this.isPlaying,
      required this.isLoading,
      required this.position,
      required this.bufferedPosition});

  @override
  final Option<Story> currentAudio;
  @override
  final bool isPlaying;
  @override
  final bool isLoading;
  @override
  final Option<Duration> position;
  @override
  final Option<Duration> bufferedPosition;

  @override
  String toString() {
    return 'PlayerState(currentAudio: $currentAudio, isPlaying: $isPlaying, isLoading: $isLoading, position: $position, bufferedPosition: $bufferedPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlayerState &&
            (identical(other.currentAudio, currentAudio) ||
                const DeepCollectionEquality()
                    .equals(other.currentAudio, currentAudio)) &&
            (identical(other.isPlaying, isPlaying) ||
                const DeepCollectionEquality()
                    .equals(other.isPlaying, isPlaying)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.bufferedPosition, bufferedPosition) ||
                const DeepCollectionEquality()
                    .equals(other.bufferedPosition, bufferedPosition)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentAudio) ^
      const DeepCollectionEquality().hash(isPlaying) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(bufferedPosition);

  @JsonKey(ignore: true)
  @override
  _$PlayerStateCopyWith<_PlayerState> get copyWith =>
      __$PlayerStateCopyWithImpl<_PlayerState>(this, _$identity);
}

abstract class _PlayerState implements PlayerState {
  const factory _PlayerState(
      {required Option<Story> currentAudio,
      required bool isPlaying,
      required bool isLoading,
      required Option<Duration> position,
      required Option<Duration> bufferedPosition}) = _$_PlayerState;

  @override
  Option<Story> get currentAudio => throw _privateConstructorUsedError;
  @override
  bool get isPlaying => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Option<Duration> get position => throw _privateConstructorUsedError;
  @override
  Option<Duration> get bufferedPosition => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlayerStateCopyWith<_PlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}
