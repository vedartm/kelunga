// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'audio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AudioTearOff {
  const _$AudioTearOff();

  Single single(
      {required String id,
      required String name,
      required String description,
      required Duration duration,
      required String mediaUrl,
      required String artUrl,
      required String authorId,
      required String authorName,
      required String authorAvatarUrl,
      String? albumName}) {
    return Single(
      id: id,
      name: name,
      description: description,
      duration: duration,
      mediaUrl: mediaUrl,
      artUrl: artUrl,
      authorId: authorId,
      authorName: authorName,
      authorAvatarUrl: authorAvatarUrl,
      albumName: albumName,
    );
  }

  Album album(
      {required String id,
      required String name,
      required String description,
      required String artUrl,
      required String authorId,
      required String authorName,
      required String authorAvatarUrl}) {
    return Album(
      id: id,
      name: name,
      description: description,
      artUrl: artUrl,
      authorId: authorId,
      authorName: authorName,
      authorAvatarUrl: authorAvatarUrl,
    );
  }
}

/// @nodoc
const $Audio = _$AudioTearOff();

/// @nodoc
mixin _$Audio {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get artUrl => throw _privateConstructorUsedError;
  String get authorId => throw _privateConstructorUsedError;
  String get authorName => throw _privateConstructorUsedError;
  String get authorAvatarUrl => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String name,
            String description,
            Duration duration,
            String mediaUrl,
            String artUrl,
            String authorId,
            String authorName,
            String authorAvatarUrl,
            String? albumName)
        single,
    required TResult Function(
            String id,
            String name,
            String description,
            String artUrl,
            String authorId,
            String authorName,
            String authorAvatarUrl)
        album,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String id,
            String name,
            String description,
            Duration duration,
            String mediaUrl,
            String artUrl,
            String authorId,
            String authorName,
            String authorAvatarUrl,
            String? albumName)?
        single,
    TResult Function(String id, String name, String description, String artUrl,
            String authorId, String authorName, String authorAvatarUrl)?
        album,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String name,
            String description,
            Duration duration,
            String mediaUrl,
            String artUrl,
            String authorId,
            String authorName,
            String authorAvatarUrl,
            String? albumName)?
        single,
    TResult Function(String id, String name, String description, String artUrl,
            String authorId, String authorName, String authorAvatarUrl)?
        album,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Single value) single,
    required TResult Function(Album value) album,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Single value)? single,
    TResult Function(Album value)? album,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Single value)? single,
    TResult Function(Album value)? album,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AudioCopyWith<Audio> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioCopyWith<$Res> {
  factory $AudioCopyWith(Audio value, $Res Function(Audio) then) =
      _$AudioCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String description,
      String artUrl,
      String authorId,
      String authorName,
      String authorAvatarUrl});
}

/// @nodoc
class _$AudioCopyWithImpl<$Res> implements $AudioCopyWith<$Res> {
  _$AudioCopyWithImpl(this._value, this._then);

  final Audio _value;
  // ignore: unused_field
  final $Res Function(Audio) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? artUrl = freezed,
    Object? authorId = freezed,
    Object? authorName = freezed,
    Object? authorAvatarUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      artUrl: artUrl == freezed
          ? _value.artUrl
          : artUrl // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: authorName == freezed
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      authorAvatarUrl: authorAvatarUrl == freezed
          ? _value.authorAvatarUrl
          : authorAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $SingleCopyWith<$Res> implements $AudioCopyWith<$Res> {
  factory $SingleCopyWith(Single value, $Res Function(Single) then) =
      _$SingleCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String description,
      Duration duration,
      String mediaUrl,
      String artUrl,
      String authorId,
      String authorName,
      String authorAvatarUrl,
      String? albumName});
}

/// @nodoc
class _$SingleCopyWithImpl<$Res> extends _$AudioCopyWithImpl<$Res>
    implements $SingleCopyWith<$Res> {
  _$SingleCopyWithImpl(Single _value, $Res Function(Single) _then)
      : super(_value, (v) => _then(v as Single));

  @override
  Single get _value => super._value as Single;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? duration = freezed,
    Object? mediaUrl = freezed,
    Object? artUrl = freezed,
    Object? authorId = freezed,
    Object? authorName = freezed,
    Object? authorAvatarUrl = freezed,
    Object? albumName = freezed,
  }) {
    return _then(Single(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      mediaUrl: mediaUrl == freezed
          ? _value.mediaUrl
          : mediaUrl // ignore: cast_nullable_to_non_nullable
              as String,
      artUrl: artUrl == freezed
          ? _value.artUrl
          : artUrl // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: authorName == freezed
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      authorAvatarUrl: authorAvatarUrl == freezed
          ? _value.authorAvatarUrl
          : authorAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      albumName: albumName == freezed
          ? _value.albumName
          : albumName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$Single implements Single {
  const _$Single(
      {required this.id,
      required this.name,
      required this.description,
      required this.duration,
      required this.mediaUrl,
      required this.artUrl,
      required this.authorId,
      required this.authorName,
      required this.authorAvatarUrl,
      this.albumName});

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final Duration duration;
  @override
  final String mediaUrl;
  @override
  final String artUrl;
  @override
  final String authorId;
  @override
  final String authorName;
  @override
  final String authorAvatarUrl;
  @override
  final String? albumName;

  @override
  String toString() {
    return 'Audio.single(id: $id, name: $name, description: $description, duration: $duration, mediaUrl: $mediaUrl, artUrl: $artUrl, authorId: $authorId, authorName: $authorName, authorAvatarUrl: $authorAvatarUrl, albumName: $albumName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Single &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.mediaUrl, mediaUrl) &&
            const DeepCollectionEquality().equals(other.artUrl, artUrl) &&
            const DeepCollectionEquality().equals(other.authorId, authorId) &&
            const DeepCollectionEquality()
                .equals(other.authorName, authorName) &&
            const DeepCollectionEquality()
                .equals(other.authorAvatarUrl, authorAvatarUrl) &&
            const DeepCollectionEquality().equals(other.albumName, albumName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(mediaUrl),
      const DeepCollectionEquality().hash(artUrl),
      const DeepCollectionEquality().hash(authorId),
      const DeepCollectionEquality().hash(authorName),
      const DeepCollectionEquality().hash(authorAvatarUrl),
      const DeepCollectionEquality().hash(albumName));

  @JsonKey(ignore: true)
  @override
  $SingleCopyWith<Single> get copyWith =>
      _$SingleCopyWithImpl<Single>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String name,
            String description,
            Duration duration,
            String mediaUrl,
            String artUrl,
            String authorId,
            String authorName,
            String authorAvatarUrl,
            String? albumName)
        single,
    required TResult Function(
            String id,
            String name,
            String description,
            String artUrl,
            String authorId,
            String authorName,
            String authorAvatarUrl)
        album,
  }) {
    return single(id, name, description, duration, mediaUrl, artUrl, authorId,
        authorName, authorAvatarUrl, albumName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String id,
            String name,
            String description,
            Duration duration,
            String mediaUrl,
            String artUrl,
            String authorId,
            String authorName,
            String authorAvatarUrl,
            String? albumName)?
        single,
    TResult Function(String id, String name, String description, String artUrl,
            String authorId, String authorName, String authorAvatarUrl)?
        album,
  }) {
    return single?.call(id, name, description, duration, mediaUrl, artUrl,
        authorId, authorName, authorAvatarUrl, albumName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String name,
            String description,
            Duration duration,
            String mediaUrl,
            String artUrl,
            String authorId,
            String authorName,
            String authorAvatarUrl,
            String? albumName)?
        single,
    TResult Function(String id, String name, String description, String artUrl,
            String authorId, String authorName, String authorAvatarUrl)?
        album,
    required TResult orElse(),
  }) {
    if (single != null) {
      return single(id, name, description, duration, mediaUrl, artUrl, authorId,
          authorName, authorAvatarUrl, albumName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Single value) single,
    required TResult Function(Album value) album,
  }) {
    return single(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Single value)? single,
    TResult Function(Album value)? album,
  }) {
    return single?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Single value)? single,
    TResult Function(Album value)? album,
    required TResult orElse(),
  }) {
    if (single != null) {
      return single(this);
    }
    return orElse();
  }
}

abstract class Single implements Audio {
  const factory Single(
      {required String id,
      required String name,
      required String description,
      required Duration duration,
      required String mediaUrl,
      required String artUrl,
      required String authorId,
      required String authorName,
      required String authorAvatarUrl,
      String? albumName}) = _$Single;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  Duration get duration;
  String get mediaUrl;
  @override
  String get artUrl;
  @override
  String get authorId;
  @override
  String get authorName;
  @override
  String get authorAvatarUrl;
  String? get albumName;
  @override
  @JsonKey(ignore: true)
  $SingleCopyWith<Single> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumCopyWith<$Res> implements $AudioCopyWith<$Res> {
  factory $AlbumCopyWith(Album value, $Res Function(Album) then) =
      _$AlbumCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String description,
      String artUrl,
      String authorId,
      String authorName,
      String authorAvatarUrl});
}

/// @nodoc
class _$AlbumCopyWithImpl<$Res> extends _$AudioCopyWithImpl<$Res>
    implements $AlbumCopyWith<$Res> {
  _$AlbumCopyWithImpl(Album _value, $Res Function(Album) _then)
      : super(_value, (v) => _then(v as Album));

  @override
  Album get _value => super._value as Album;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? artUrl = freezed,
    Object? authorId = freezed,
    Object? authorName = freezed,
    Object? authorAvatarUrl = freezed,
  }) {
    return _then(Album(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      artUrl: artUrl == freezed
          ? _value.artUrl
          : artUrl // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: authorName == freezed
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      authorAvatarUrl: authorAvatarUrl == freezed
          ? _value.authorAvatarUrl
          : authorAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Album implements Album {
  const _$Album(
      {required this.id,
      required this.name,
      required this.description,
      required this.artUrl,
      required this.authorId,
      required this.authorName,
      required this.authorAvatarUrl});

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String artUrl;
  @override
  final String authorId;
  @override
  final String authorName;
  @override
  final String authorAvatarUrl;

  @override
  String toString() {
    return 'Audio.album(id: $id, name: $name, description: $description, artUrl: $artUrl, authorId: $authorId, authorName: $authorName, authorAvatarUrl: $authorAvatarUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Album &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.artUrl, artUrl) &&
            const DeepCollectionEquality().equals(other.authorId, authorId) &&
            const DeepCollectionEquality()
                .equals(other.authorName, authorName) &&
            const DeepCollectionEquality()
                .equals(other.authorAvatarUrl, authorAvatarUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(artUrl),
      const DeepCollectionEquality().hash(authorId),
      const DeepCollectionEquality().hash(authorName),
      const DeepCollectionEquality().hash(authorAvatarUrl));

  @JsonKey(ignore: true)
  @override
  $AlbumCopyWith<Album> get copyWith =>
      _$AlbumCopyWithImpl<Album>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String name,
            String description,
            Duration duration,
            String mediaUrl,
            String artUrl,
            String authorId,
            String authorName,
            String authorAvatarUrl,
            String? albumName)
        single,
    required TResult Function(
            String id,
            String name,
            String description,
            String artUrl,
            String authorId,
            String authorName,
            String authorAvatarUrl)
        album,
  }) {
    return album(
        id, name, description, artUrl, authorId, authorName, authorAvatarUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String id,
            String name,
            String description,
            Duration duration,
            String mediaUrl,
            String artUrl,
            String authorId,
            String authorName,
            String authorAvatarUrl,
            String? albumName)?
        single,
    TResult Function(String id, String name, String description, String artUrl,
            String authorId, String authorName, String authorAvatarUrl)?
        album,
  }) {
    return album?.call(
        id, name, description, artUrl, authorId, authorName, authorAvatarUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String name,
            String description,
            Duration duration,
            String mediaUrl,
            String artUrl,
            String authorId,
            String authorName,
            String authorAvatarUrl,
            String? albumName)?
        single,
    TResult Function(String id, String name, String description, String artUrl,
            String authorId, String authorName, String authorAvatarUrl)?
        album,
    required TResult orElse(),
  }) {
    if (album != null) {
      return album(
          id, name, description, artUrl, authorId, authorName, authorAvatarUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Single value) single,
    required TResult Function(Album value) album,
  }) {
    return album(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Single value)? single,
    TResult Function(Album value)? album,
  }) {
    return album?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Single value)? single,
    TResult Function(Album value)? album,
    required TResult orElse(),
  }) {
    if (album != null) {
      return album(this);
    }
    return orElse();
  }
}

abstract class Album implements Audio {
  const factory Album(
      {required String id,
      required String name,
      required String description,
      required String artUrl,
      required String authorId,
      required String authorName,
      required String authorAvatarUrl}) = _$Album;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get artUrl;
  @override
  String get authorId;
  @override
  String get authorName;
  @override
  String get authorAvatarUrl;
  @override
  @JsonKey(ignore: true)
  $AlbumCopyWith<Album> get copyWith => throw _privateConstructorUsedError;
}
