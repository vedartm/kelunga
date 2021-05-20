import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.cache() = CacheFailure;

  const factory Failure.server() = ServerFailure;

  const factory Failure.unauthenticated() = Unauthenticated;

  const factory Failure.cancelledByUser() = CancelledByUser;
}
