import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';

abstract class IPlayerRepo {
  Future<void> changePlayingState({bool isPlaying});

  Future<Either<Duration, Failure>> initializePlayer(String mediaUrl);
}
