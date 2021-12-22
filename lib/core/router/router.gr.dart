// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:kelunga/features/auth/ui/login_page.dart' as _i2;
import 'package:kelunga/features/auth/ui/splash_page.dart' as _i1;
import 'package:kelunga/features/home/models/audio.dart' as _i7;
import 'package:kelunga/features/home/ui/album_page.dart' as _i4;
import 'package:kelunga/features/home/ui/home_page.dart' as _i3;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    LoginRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.LoginPage());
    },
    HomeRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    },
    AlbumRoute.name: (routeData) {
      final args = routeData.argsAs<AlbumRouteArgs>();
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i4.AlbumPage(key: args.key, album: args.album));
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(SplashRoute.name, path: '/'),
        _i5.RouteConfig(LoginRoute.name, path: '/login-page'),
        _i5.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i5.RouteConfig(AlbumRoute.name, path: '/album-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-page');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home-page');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.AlbumPage]
class AlbumRoute extends _i5.PageRouteInfo<AlbumRouteArgs> {
  AlbumRoute({_i6.Key? key, required _i7.Album album})
      : super(AlbumRoute.name,
            path: '/album-page', args: AlbumRouteArgs(key: key, album: album));

  static const String name = 'AlbumRoute';
}

class AlbumRouteArgs {
  const AlbumRouteArgs({this.key, required this.album});

  final _i6.Key? key;

  final _i7.Album album;

  @override
  String toString() {
    return 'AlbumRouteArgs{key: $key, album: $album}';
  }
}
