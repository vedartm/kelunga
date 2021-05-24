import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio.freezed.dart';

@freezed
class Audio with _$Audio {
  const factory Audio.single({
    required String id,
    required String name,
    required String description,
    required Duration duration,
    required String mediaUrl,
    required String artUrl,
    required String authorId,
    required String authorName,
    required String authorAvatarUrl,
    String? albumName,
  }) = Single;

  const factory Audio.album({
    required String id,
    required String name,
    required String description,
    required String artUrl,
    required String authorId,
    required String authorName,
    required String authorAvatarUrl,
  }) = Album;

  factory Audio.fromAudiosCollection(
    QueryDocumentSnapshot<Map<String, dynamic>> snapshot,
  ) {
    final data = snapshot.data();
    if (!data['isAlbum']) {
      return Audio.single(
        id: snapshot.id,
        name: data['name'],
        description: data['description'],
        duration: Duration(seconds: data['media']['durationInSeconds']),
        mediaUrl: data['media']['mediaUrl'],
        artUrl: data['artUrl'],
        authorId: data['author']['id'],
        authorName: data['author']['name'],
        authorAvatarUrl: data['author']['avatarUrl'],
      );
    } else {
      return Audio.album(
        id: snapshot.id,
        name: data['name'],
        description: data['description'],
        artUrl: data['artUrl'],
        authorId: data['author']['id'],
        authorName: data['author']['name'],
        authorAvatarUrl: data['author']['avatarUrl'],
      );
    }
  }

  factory Audio.fromSinglesCollection(
    Album album,
    QueryDocumentSnapshot<Map<String, dynamic>> snapshot,
  ) {
    final data = snapshot.data();
    return Audio.single(
      id: snapshot.id,
      name: data['name'],
      description: album.description,
      duration: Duration(seconds: data['durationInSeconds']),
      mediaUrl: data['mediaUrl'],
      artUrl: album.artUrl,
      authorId: album.authorId,
      albumName: album.name,
      authorName: album.authorName,
      authorAvatarUrl: album.authorAvatarUrl,
    );
  }
}
