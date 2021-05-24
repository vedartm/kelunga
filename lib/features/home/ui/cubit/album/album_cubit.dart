import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/error/failures.dart';
import '../../../models/audio.dart';
import '../../../repo/home_repo.dart';

part 'album_cubit.freezed.dart';
part 'album_state.dart';

@injectable
class AlbumCubit extends Cubit<AlbumState> {
  AlbumCubit(this._repo) : super(const AlbumState.loading());

  final IHomeRepo _repo;

  void fetchSingles(Album album) async {
    final result = await _repo.getSingles(album);
    result.fold(
      (l) => emit(AlbumState.failed(l)),
      (r) => emit(AlbumState.success(r)),
    );
  }
}
