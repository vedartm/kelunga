part of 'player_cubit.dart';

@freezed
class PlayerState with _$PlayerState {
  const factory PlayerState({
    required Option<Story> currentAudio,
    required bool isPlaying,
    required bool isLoading,
    required Option<Duration> position,
    required Option<Duration> bufferedPosition,
  }) = _PlayerState;

  factory PlayerState.initial() => PlayerState(
        currentAudio: none(),
        isPlaying: false,
        isLoading: false,
        position: none(),
        bufferedPosition: none(),
      );
}
