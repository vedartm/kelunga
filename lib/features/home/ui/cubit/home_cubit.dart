import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../models/story.dart';
import '../../repo/home_repo.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._repo) : super(const HomeState.loading());

  final IHomeRepo _repo;

  void fetchStories() async {
    final result = await _repo.getStories();
    emit(result.fold(
      (l) => HomeState.failed(l),
      (r) => HomeState.success(r),
    ));
  }
}
