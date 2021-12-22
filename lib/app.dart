import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/injection/injection.dart';
import 'core/router/router.gr.dart';
import 'core/ui/themes.dart';
import 'features/auth/ui/cubit/auth_cubit.dart';
import 'features/player/ui/cubit/player_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<AuthCubit>()..checkAuthStatus()),
        BlocProvider(create: (_) => getIt<PlayerCubit>()..initializePlayer()),
      ],
      child: MaterialApp.router(
        title: 'Kelunga',
        theme: KThemes.dayTheme,
        darkTheme: KThemes.nightTheme,
        themeMode: ThemeMode.light,
        routerDelegate: _appRouter.delegate(
          navigatorObservers: () => [
            FirebaseAnalyticsObserver(analytics: getIt()),
          ],
        ),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
      // child: MaterialApp(
      //   theme: KThemes.dayTheme,
      //   home: HomePage(),
      // ),
    );
  }
}
