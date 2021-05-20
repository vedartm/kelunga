import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner.freezed.dart';

@freezed
class Banner with _$Banner {
  const factory Banner({
    required String imageUrl,
    required String action,
  }) = _Banner;

  factory Banner.fromFirestore(
      QueryDocumentSnapshot<Map<String, dynamic>> snapshot) {
    final data = snapshot.data();
    return Banner(
      imageUrl: data['imageUrl'],
      action: data['action'],
    );
  }
}
