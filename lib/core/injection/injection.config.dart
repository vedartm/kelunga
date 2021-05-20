// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_analytics/firebase_analytics.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i7;

import '../../features/auth/repo/auth_repo.dart' as _i10;
import '../../features/auth/ui/cubit/auth_cubit.dart' as _i12;
import '../../features/home/repo/home_repo.dart' as _i11;
import '../../features/home/ui/cubit/home_cubit.dart' as _i13;
import '../../features/player/ui/cubit/player_cubit.dart' as _i9;
import '../util/bloc_observer.dart' as _i8;
import 'module.dart' as _i14;

const String _dev = 'dev';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final myModule = _$MyModule();
  gh.lazySingleton<_i3.FirebaseAnalytics>(() => myModule.analytics);
  gh.lazySingleton<_i4.FirebaseAuth>(() => myModule.auth);
  gh.lazySingleton<_i5.FirebaseFirestore>(() => myModule.firestore);
  gh.lazySingleton<_i6.GoogleSignIn>(() => myModule.googleSignIn);
  gh.lazySingleton<_i7.Logger>(() => myModule.loggerDev, registerFor: {_dev});
  gh.lazySingleton<_i7.Logger>(() => myModule.loggerProd, registerFor: {_prod});
  gh.lazySingleton<_i8.MyBlocObserver>(
      () => _i8.MyBlocObserver(get<_i7.Logger>()));
  gh.factory<_i9.PlayerCubit>(() => _i9.PlayerCubit());
  gh.lazySingleton<_i10.IAuthRepo>(() => _i10.AuthRepo(
      get<_i7.Logger>(),
      get<_i4.FirebaseAuth>(),
      get<_i6.GoogleSignIn>(),
      get<_i5.FirebaseFirestore>()));
  gh.lazySingleton<_i11.IHomeRepo>(
      () => _i11.HomeRepo(get<_i5.FirebaseFirestore>(), get<_i7.Logger>()));
  gh.factory<_i12.AuthCubit>(() => _i12.AuthCubit(get<_i10.IAuthRepo>()));
  gh.factory<_i13.HomeCubit>(() => _i13.HomeCubit(get<_i11.IHomeRepo>()));
  return get;
}

class _$MyModule extends _i14.MyModule {}
