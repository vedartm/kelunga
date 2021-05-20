import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'story.freezed.dart';

@freezed
class Story with _$Story {
  const factory Story({
    required String id,
    required String name,
    required String description,
    required Duration duration,
    required String mediaUrl,
    required String imageUrl,
    required String authorId,
    required String authorName,
    required String authorAvatarUrl,
  }) = _Story;

  factory Story.fromFirestore(
      QueryDocumentSnapshot<Map<String, dynamic>> snapshot) {
    final data = snapshot.data();
    return Story(
      id: snapshot.id,
      name: data['name'],
      description: data['description'],
      duration: Duration(seconds: data['durationInSeconds']),
      mediaUrl: data['mediaUrl'],
      imageUrl: data['imageUrl'],
      authorId: data['author']['id'],
      authorName: data['author']['name'],
      authorAvatarUrl: data['author']['avatarUrl'],
    );
  }
}
