import 'dart:async';

import 'package:audio_service/audio_service.dart';
import 'package:audio_session/audio_session.dart';
import 'package:just_audio/just_audio.dart';

void entrypoint() {
  AudioServiceBackground.run(() => AudioPlayerTask());
}

/// This task defines logic for playing a list of podcast episodes.
class AudioPlayerTask extends BackgroundAudioTask {
  final AudioPlayer _player = AudioPlayer();
  late StreamSubscription<Duration> _eventSubscription;

  @override
  Future<void> onStart(Map<String, dynamic>? params) async {
    // We configure the audio session for speech since we're playing a podcast.
    // You can also put this in your app's initialisation if your app doesn't
    // switch between two types of audio as this example does.
    final session = await AudioSession.instance;
    await session.configure(AudioSessionConfiguration.speech());
    // Propagate all events from the audio player to AudioService clients.
    // _eventSubscription = _player.playbackEventStream.listen((event) {
    // });
    _eventSubscription = _player.positionStream.listen((event) {
      _broadcastState();
    });
    // Special processing for state transitions.
    _player.processingStateStream.listen((state) {
      switch (state) {
        case ProcessingState.completed:
          // In this example, the service stops when reaching the end.
          onStop();
          break;
        case ProcessingState.ready:
          // If we just came from skipping between tracks, clear the skip
          // state now that we're ready to play.
          break;
        default:
          break;
      }
    });
  }

  Future<void> onPlayMediaItem(MediaItem item) async {
    // Load and broadcast the mediaItem
    AudioServiceBackground.setMediaItem(item);
    try {
      await _player.setAudioSource(AudioSource.uri(Uri.parse(item.id)));
      // In this example, we automatically start playing on start.
      onPlay();
    } catch (e) {
      print("Error: $e");
      onStop();
    }
  }

  @override
  Future<void> onPlay() => _player.play();

  @override
  Future<void> onPause() => _player.pause();

  @override
  Future<void> onSeekTo(Duration position) => _player.seek(position);

  @override
  Future<void> onStop() async {
    await _player.dispose();
    _eventSubscription.cancel();
    // It is important to wait for this state to be broadcast before we shut
    // down the task. If we don't, the background task will be destroyed before
    // the message gets sent to the UI.
    await _broadcastState();
    // Shut down this task
    await super.onStop();
  }

  /// Begins or stops a continuous seek in [direction]. After it begins it will
  /// continue seeking forward or backward by 10 seconds within the audio, at
  /// intervals of 1 second in app time.
  // void _seekContinuously(bool begin, int direction) {
  //   _seeker?.stop();
  //   if (begin) {
  //     _seeker = Seeker(_player, Duration(seconds: 10 * direction),
  //         Duration(seconds: 1), mediaItem!)
  //       ..start();
  //   }
  // }

  /// Broadcasts the current state to all clients.
  Future<void> _broadcastState() async {
    await AudioServiceBackground.setState(
      controls: [
        _player.playing ? MediaControl.pause : MediaControl.play,
        MediaControl.stop,
      ],
      androidCompactActions: [0, 1],
      processingState: _getProcessingState(),
      playing: _player.playing,
      position: _player.position,
      bufferedPosition: _player.bufferedPosition,
      speed: _player.speed,
    );
  }

  /// Maps just_audio's processing state into into audio_service's playing
  /// state.
  AudioProcessingState _getProcessingState() {
    switch (_player.processingState) {
      case ProcessingState.idle:
        return AudioProcessingState.stopped;
      case ProcessingState.loading:
        return AudioProcessingState.connecting;
      case ProcessingState.buffering:
        return AudioProcessingState.buffering;
      case ProcessingState.ready:
        return AudioProcessingState.ready;
      case ProcessingState.completed:
        return AudioProcessingState.completed;
      default:
        throw Exception("Invalid state: ${_player.processingState}");
    }
  }
}
