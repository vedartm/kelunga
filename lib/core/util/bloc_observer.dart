import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@lazySingleton
class MyBlocObserver extends BlocObserver {
  MyBlocObserver(this._logger);

  final Logger _logger;

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    // _logger.v('${bloc.runtimeType} $change');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    // _logger.d('${bloc.runtimeType} $transition');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    _logger.e('${bloc.runtimeType} $error $stackTrace');
    super.onError(bloc, error, stackTrace);
  }
}
