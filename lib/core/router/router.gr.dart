// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:kelunga/features/auth/ui/login_page.dart' as _i4;
import 'package:kelunga/features/auth/ui/splash_page.dart' as _i3;
import 'package:kelunga/features/home/ui/album_page.dart' as _i6;
import 'package:kelunga/features/home/ui/home_page.dart' as _i5;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.SplashPage();
        }),
    LoginRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.LoginPage();
        }),
    HomeRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.HomePage();
        }),
    AlbumRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<AlbumRouteArgs>();
          return _i6.AlbumPage(key: args.key, album: args.album);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/'),
        _i1.RouteConfig(LoginRoute.name, path: '/login-page'),
        _i1.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i1.RouteConfig(AlbumRoute.name, path: '/album-page')
      ];
}

class SplashRoute extends _i1.PageRouteInfo {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

class LoginRoute extends _i1.PageRouteInfo {
  const LoginRoute() : super(name, path: '/login-page');

  static const String name = 'LoginRoute';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/home-page');

  static const String name = 'HomeRoute';
}

class AlbumRoute extends _i1.PageRouteInfo<AlbumRouteArgs> {
  AlbumRoute({_i2.Key? key, required dynamic album})
      : super(name,
            path: '/album-page', args: AlbumRouteArgs(key: key, album: album));

  static const String name = 'AlbumRoute';
}

class AlbumRouteArgs {
  const AlbumRouteArgs({this.key, required this.album});

  final _i2.Key? key;

  final dynamic album;
}
