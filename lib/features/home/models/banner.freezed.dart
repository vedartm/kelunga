// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'banner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BannerTearOff {
  const _$BannerTearOff();

  _Banner call({required String imageUrl, required String action}) {
    return _Banner(
      imageUrl: imageUrl,
      action: action,
    );
  }
}

/// @nodoc
const $Banner = _$BannerTearOff();

/// @nodoc
mixin _$Banner {
  String get imageUrl => throw _privateConstructorUsedError;
  String get action => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BannerCopyWith<Banner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerCopyWith<$Res> {
  factory $BannerCopyWith(Banner value, $Res Function(Banner) then) =
      _$BannerCopyWithImpl<$Res>;
  $Res call({String imageUrl, String action});
}

/// @nodoc
class _$BannerCopyWithImpl<$Res> implements $BannerCopyWith<$Res> {
  _$BannerCopyWithImpl(this._value, this._then);

  final Banner _value;
  // ignore: unused_field
  final $Res Function(Banner) _then;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? action = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BannerCopyWith<$Res> implements $BannerCopyWith<$Res> {
  factory _$BannerCopyWith(_Banner value, $Res Function(_Banner) then) =
      __$BannerCopyWithImpl<$Res>;
  @override
  $Res call({String imageUrl, String action});
}

/// @nodoc
class __$BannerCopyWithImpl<$Res> extends _$BannerCopyWithImpl<$Res>
    implements _$BannerCopyWith<$Res> {
  __$BannerCopyWithImpl(_Banner _value, $Res Function(_Banner) _then)
      : super(_value, (v) => _then(v as _Banner));

  @override
  _Banner get _value => super._value as _Banner;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? action = freezed,
  }) {
    return _then(_Banner(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Banner implements _Banner {
  const _$_Banner({required this.imageUrl, required this.action});

  @override
  final String imageUrl;
  @override
  final String action;

  @override
  String toString() {
    return 'Banner(imageUrl: $imageUrl, action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Banner &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(action);

  @JsonKey(ignore: true)
  @override
  _$BannerCopyWith<_Banner> get copyWith =>
      __$BannerCopyWithImpl<_Banner>(this, _$identity);
}

abstract class _Banner implements Banner {
  const factory _Banner({required String imageUrl, required String action}) =
      _$_Banner;

  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  String get action => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BannerCopyWith<_Banner> get copyWith => throw _privateConstructorUsedError;
}
