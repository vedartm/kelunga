part of 'album_cubit.dart';

@freezed
class AlbumState with _$AlbumState {
  const factory AlbumState.failed(Failure failure) = _Failed;

  const factory AlbumState.loading() = _Loading;

  const factory AlbumState.success(List<Single> singles) = _Success;
}
