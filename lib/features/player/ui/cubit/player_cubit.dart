import 'package:audio_service/audio_service.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/util/player_task.dart';
import '../../../home/models/audio.dart';

part 'player_cubit.freezed.dart';
part 'player_state.dart';

@injectable
class PlayerCubit extends Cubit<PlayerState> {
  PlayerCubit() : super(PlayerState.initial());

  Future<void> initializePlayer() async {
    print('AudioService connected: ${AudioService.connected}');
    print('AudioService Running: ${AudioService.running}');
    if (!AudioService.connected) await AudioService.connect();
    await AudioService.start(backgroundTaskEntrypoint: entrypoint);

    AudioService.runningStream.listen((event) {
      if (!event) emit(PlayerState.initial());
    });

    AudioService.playbackStateStream.listen((pState) {
      // print('AudioService: ${AudioService.playbackState}');
      emit(state.copyWith(
        isPlaying: pState.playing,
        position: optionOf(pState.position),
        bufferedPosition: optionOf(pState.bufferedPosition),
      ));
      switch (pState.processingState) {
        case AudioProcessingState.none:
          break;
        case AudioProcessingState.connecting:
          emit(state.copyWith(isLoading: true));
          break;
        case AudioProcessingState.ready:
          emit(state.copyWith(
            isLoading: false,
            isBuffering: false,
          ));
          break;
        case AudioProcessingState.buffering:
          emit(state.copyWith(isBuffering: true));
          break;
        case AudioProcessingState.fastForwarding:
          break;
        case AudioProcessingState.rewinding:
          break;
        case AudioProcessingState.skippingToPrevious:
          break;
        case AudioProcessingState.skippingToNext:
          break;
        case AudioProcessingState.skippingToQueueItem:
          break;
        case AudioProcessingState.completed:
          break;
        case AudioProcessingState.stopped:
          break;
        case AudioProcessingState.error:
          break;
      }
    });
  }

  void playAudio(Single single) async {
    if (!AudioService.running) {
      await initializePlayer();
    }
    emit(state.copyWith(
      isLoading: true,
      currentAudio: optionOf(single),
    ));
    try {
      await AudioService.playMediaItem(MediaItem(
        id: single.mediaUrl,
        album: single.albumName ?? single.authorName,
        displayDescription: single.description,
        artist: single.authorName,
        artUri: Uri.parse(single.artUrl),
        title: single.name,
      ));
    } catch (e) {
      print("Error loading audio: $e");
    }
    emit(state.copyWith(isLoading: false));
  }

  void changePlayingState() {
    if (state.isPlaying) {
      AudioService.pause();
    } else {
      AudioService.play();
    }
  }

  @override
  Future<void> close() async {
    print('Stop service');
    await AudioService.stop();
    return super.close();
  }
}
