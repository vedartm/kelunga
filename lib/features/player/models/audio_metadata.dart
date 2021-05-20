import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_metadata.freezed.dart';

@freezed
class AudioMetadata with _$AudioMetadata {
  const factory AudioMetadata({
    required String name,
  }) = _AudioMetadata;
}
