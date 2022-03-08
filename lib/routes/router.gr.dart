// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:navigation/pages/favorite_page.dart' as _i6;
import 'package:navigation/pages/favorite_screen.dart' as _i3;
import 'package:navigation/pages/home_page.dart' as _i8;
import 'package:navigation/pages/home_screen.dart' as _i4;
import 'package:navigation/pages/login_page.dart' as _i1;
import 'package:navigation/pages/nested_page.dart' as _i9;
import 'package:navigation/pages/podcast_page.dart' as _i5;
import 'package:navigation/pages/root_page.dart' as _i2;
import 'package:navigation/pages/under_page.dart' as _i7;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    LoginPage.name: (routeData) {
      final args =
          routeData.argsAs<LoginPageArgs>(orElse: () => const LoginPageArgs());
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: _i1.LoginPage(key: args.key));
    },
    RootPage.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.RootPage());
    },
    FavoriteScreen.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.FavoriteScreen());
    },
    HomeScreen.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.HomeScreen());
    },
    PodcastPage.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.PodcastPage());
    },
    FavoritePageRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.FavoritePage());
    },
    UnderPage.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.UnderPage());
    },
    HomePageRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i8.HomePage());
    },
    NestedPage.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i9.NestedPage());
    }
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(LoginPage.name, path: '/'),
        _i10.RouteConfig(RootPage.name, path: '/root-page', children: [
          _i10.RouteConfig(FavoriteScreen.name,
              path: 'favorite',
              parent: RootPage.name,
              children: [
                _i10.RouteConfig(FavoritePageRoute.name,
                    path: '', parent: FavoriteScreen.name),
                _i10.RouteConfig(UnderPage.name,
                    path: 'underPage/*', parent: FavoriteScreen.name)
              ]),
          _i10.RouteConfig(HomeScreen.name,
              path: 'home',
              parent: RootPage.name,
              children: [
                _i10.RouteConfig(HomePageRoute.name,
                    path: '', parent: HomeScreen.name),
                _i10.RouteConfig(NestedPage.name,
                    path: 'nestedPage/*', parent: HomeScreen.name)
              ]),
          _i10.RouteConfig(PodcastPage.name,
              path: 'podcastPage/*', parent: RootPage.name)
        ])
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginPage extends _i10.PageRouteInfo<LoginPageArgs> {
  LoginPage({_i11.Key? key})
      : super(LoginPage.name, path: '/', args: LoginPageArgs(key: key));

  static const String name = 'LoginPage';
}

class LoginPageArgs {
  const LoginPageArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'LoginPageArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.RootPage]
class RootPage extends _i10.PageRouteInfo<void> {
  const RootPage({List<_i10.PageRouteInfo>? children})
      : super(RootPage.name, path: '/root-page', initialChildren: children);

  static const String name = 'RootPage';
}

/// generated route for
/// [_i3.FavoriteScreen]
class FavoriteScreen extends _i10.PageRouteInfo<void> {
  const FavoriteScreen({List<_i10.PageRouteInfo>? children})
      : super(FavoriteScreen.name, path: 'favorite', initialChildren: children);

  static const String name = 'FavoriteScreen';
}

/// generated route for
/// [_i4.HomeScreen]
class HomeScreen extends _i10.PageRouteInfo<void> {
  const HomeScreen({List<_i10.PageRouteInfo>? children})
      : super(HomeScreen.name, path: 'home', initialChildren: children);

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i5.PodcastPage]
class PodcastPage extends _i10.PageRouteInfo<void> {
  const PodcastPage() : super(PodcastPage.name, path: 'podcastPage/*');

  static const String name = 'PodcastPage';
}

/// generated route for
/// [_i6.FavoritePage]
class FavoritePageRoute extends _i10.PageRouteInfo<void> {
  const FavoritePageRoute() : super(FavoritePageRoute.name, path: '');

  static const String name = 'FavoritePageRoute';
}

/// generated route for
/// [_i7.UnderPage]
class UnderPage extends _i10.PageRouteInfo<void> {
  const UnderPage() : super(UnderPage.name, path: 'underPage/*');

  static const String name = 'UnderPage';
}

/// generated route for
/// [_i8.HomePage]
class HomePageRoute extends _i10.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i9.NestedPage]
class NestedPage extends _i10.PageRouteInfo<void> {
  const NestedPage() : super(NestedPage.name, path: 'nestedPage/*');

  static const String name = 'NestedPage';
}
