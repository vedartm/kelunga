// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'audio_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AudioMetadataTearOff {
  const _$AudioMetadataTearOff();

  _AudioMetadata call({required String name}) {
    return _AudioMetadata(
      name: name,
    );
  }
}

/// @nodoc
const $AudioMetadata = _$AudioMetadataTearOff();

/// @nodoc
mixin _$AudioMetadata {
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AudioMetadataCopyWith<AudioMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioMetadataCopyWith<$Res> {
  factory $AudioMetadataCopyWith(
          AudioMetadata value, $Res Function(AudioMetadata) then) =
      _$AudioMetadataCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$AudioMetadataCopyWithImpl<$Res>
    implements $AudioMetadataCopyWith<$Res> {
  _$AudioMetadataCopyWithImpl(this._value, this._then);

  final AudioMetadata _value;
  // ignore: unused_field
  final $Res Function(AudioMetadata) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AudioMetadataCopyWith<$Res>
    implements $AudioMetadataCopyWith<$Res> {
  factory _$AudioMetadataCopyWith(
          _AudioMetadata value, $Res Function(_AudioMetadata) then) =
      __$AudioMetadataCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$AudioMetadataCopyWithImpl<$Res>
    extends _$AudioMetadataCopyWithImpl<$Res>
    implements _$AudioMetadataCopyWith<$Res> {
  __$AudioMetadataCopyWithImpl(
      _AudioMetadata _value, $Res Function(_AudioMetadata) _then)
      : super(_value, (v) => _then(v as _AudioMetadata));

  @override
  _AudioMetadata get _value => super._value as _AudioMetadata;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_AudioMetadata(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AudioMetadata implements _AudioMetadata {
  const _$_AudioMetadata({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'AudioMetadata(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AudioMetadata &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$AudioMetadataCopyWith<_AudioMetadata> get copyWith =>
      __$AudioMetadataCopyWithImpl<_AudioMetadata>(this, _$identity);
}

abstract class _AudioMetadata implements AudioMetadata {
  const factory _AudioMetadata({required String name}) = _$_AudioMetadata;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AudioMetadataCopyWith<_AudioMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}
