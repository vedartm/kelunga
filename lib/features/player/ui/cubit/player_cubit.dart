import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';

import '../../../home/models/audio.dart';

part 'player_cubit.freezed.dart';
part 'player_state.dart';

@injectable
class PlayerCubit extends Cubit<PlayerState> {
  PlayerCubit() : super(PlayerState.initial());

  AudioPlayer player = AudioPlayer();

  Future<void> initializePlayer() async {
    player.positionStream.listen((event) {
      emit(state.copyWith(position: optionOf(event)));
    });
    player.bufferedPositionStream.listen((event) {
      emit(state.copyWith(bufferedPosition: optionOf(event)));
    });
    player.processingStateStream.listen((event) {
      switch (event) {
        case ProcessingState.idle:
          emit(PlayerState.initial());
          break;
        case ProcessingState.loading:
          emit(state.copyWith(isLoading: true));
          break;
        case ProcessingState.ready:
          emit(state.copyWith(isLoading: false));
          break;
        case ProcessingState.buffering:
          emit(state.copyWith(isBuffering: true));
          break;
        case ProcessingState.completed:
          emit(PlayerState.initial());
          break;
      }
    });
    player.playingStream.listen((event) {
      emit(state.copyWith(isPlaying: event));
    });
  }

  void playAudio(Single single) async {
    emit(state.copyWith(
      isLoading: true,
      currentAudio: optionOf(single),
    ));
    try {
      player.setAudioSource(AudioSource.uri(
        Uri.parse(single.mediaUrl),
        tag: MediaItem(
          id: single.id,
          duration: single.duration,
          album: single.albumName,
          artist: single.authorName,
          title: single.name,
          artUri: Uri.parse(single.artUrl),
        ),
      ));
      await player.play();
    } catch (e) {
      // print("Error loading audio: $e");
    }
    emit(state.copyWith(isLoading: false));
  }

  void changePlayingState() {
    if (player.playing) {
      player.pause();
    } else {
      player.play();
    }
  }

  @override
  Future<void> close() async {
    await player.stop();
    return super.close();
  }
}
