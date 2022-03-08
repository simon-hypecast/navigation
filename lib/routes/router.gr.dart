// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;
import 'package:navigation/pages/audio_player.dart' as _i2;
import 'package:navigation/pages/favorite_page.dart' as _i7;
import 'package:navigation/pages/favorite_screen.dart' as _i4;
import 'package:navigation/pages/home_page.dart' as _i9;
import 'package:navigation/pages/home_screen.dart' as _i5;
import 'package:navigation/pages/login_page.dart' as _i1;
import 'package:navigation/pages/nested_page.dart' as _i10;
import 'package:navigation/pages/podcast_page.dart' as _i6;
import 'package:navigation/pages/root_page.dart' as _i3;
import 'package:navigation/pages/under_page.dart' as _i8;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    LoginPage.name: (routeData) {
      final args =
          routeData.argsAs<LoginPageArgs>(orElse: () => const LoginPageArgs());
      return _i11.AdaptivePage<dynamic>(
          routeData: routeData, child: _i1.LoginPage(key: args.key));
    },
    AudioPlayer.name: (routeData) {
      return _i11.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.AudioPlayer(),
          transitionsBuilder: _i11.TransitionsBuilders.slideBottom,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    RootPage.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.RootPage());
    },
    FavoriteScreen.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.FavoriteScreen());
    },
    HomeScreen.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.HomeScreen());
    },
    PodcastPage.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.PodcastPage());
    },
    FavoritePageRoute.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.FavoritePage());
    },
    UnderPage.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i8.UnderPage());
    },
    HomePageRoute.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i9.HomePage());
    },
    NestedPage.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i10.NestedPage());
    }
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(LoginPage.name, path: '/'),
        _i11.RouteConfig(AudioPlayer.name, path: '/audio-player'),
        _i11.RouteConfig(RootPage.name, path: '/root-page', children: [
          _i11.RouteConfig(FavoriteScreen.name,
              path: 'favorite',
              parent: RootPage.name,
              children: [
                _i11.RouteConfig(FavoritePageRoute.name,
                    path: '', parent: FavoriteScreen.name),
                _i11.RouteConfig(UnderPage.name,
                    path: 'underPage/*', parent: FavoriteScreen.name)
              ]),
          _i11.RouteConfig(HomeScreen.name,
              path: 'home',
              parent: RootPage.name,
              children: [
                _i11.RouteConfig(HomePageRoute.name,
                    path: '', parent: HomeScreen.name),
                _i11.RouteConfig(NestedPage.name,
                    path: 'nestedPage/*', parent: HomeScreen.name)
              ]),
          _i11.RouteConfig(PodcastPage.name,
              path: 'podcastPage/*', parent: RootPage.name)
        ])
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginPage extends _i11.PageRouteInfo<LoginPageArgs> {
  LoginPage({_i12.Key? key})
      : super(LoginPage.name, path: '/', args: LoginPageArgs(key: key));

  static const String name = 'LoginPage';
}

class LoginPageArgs {
  const LoginPageArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'LoginPageArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.AudioPlayer]
class AudioPlayer extends _i11.PageRouteInfo<void> {
  const AudioPlayer() : super(AudioPlayer.name, path: '/audio-player');

  static const String name = 'AudioPlayer';
}

/// generated route for
/// [_i3.RootPage]
class RootPage extends _i11.PageRouteInfo<void> {
  const RootPage({List<_i11.PageRouteInfo>? children})
      : super(RootPage.name, path: '/root-page', initialChildren: children);

  static const String name = 'RootPage';
}

/// generated route for
/// [_i4.FavoriteScreen]
class FavoriteScreen extends _i11.PageRouteInfo<void> {
  const FavoriteScreen({List<_i11.PageRouteInfo>? children})
      : super(FavoriteScreen.name, path: 'favorite', initialChildren: children);

  static const String name = 'FavoriteScreen';
}

/// generated route for
/// [_i5.HomeScreen]
class HomeScreen extends _i11.PageRouteInfo<void> {
  const HomeScreen({List<_i11.PageRouteInfo>? children})
      : super(HomeScreen.name, path: 'home', initialChildren: children);

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i6.PodcastPage]
class PodcastPage extends _i11.PageRouteInfo<void> {
  const PodcastPage() : super(PodcastPage.name, path: 'podcastPage/*');

  static const String name = 'PodcastPage';
}

/// generated route for
/// [_i7.FavoritePage]
class FavoritePageRoute extends _i11.PageRouteInfo<void> {
  const FavoritePageRoute() : super(FavoritePageRoute.name, path: '');

  static const String name = 'FavoritePageRoute';
}

/// generated route for
/// [_i8.UnderPage]
class UnderPage extends _i11.PageRouteInfo<void> {
  const UnderPage() : super(UnderPage.name, path: 'underPage/*');

  static const String name = 'UnderPage';
}

/// generated route for
/// [_i9.HomePage]
class HomePageRoute extends _i11.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i10.NestedPage]
class NestedPage extends _i11.PageRouteInfo<void> {
  const NestedPage() : super(NestedPage.name, path: 'nestedPage/*');

  static const String name = 'NestedPage';
}
