import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../models/audio.dart';
import '../../repo/home_repo.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._repo) : super(const HomeState.loading());

  final IHomeRepo _repo;

  void fetchAudios() async {
    final result = await _repo.getAudios();
    emit(result.fold(
      HomeState.failed,
      HomeState.success,
    ));
  }
}
