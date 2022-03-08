// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:navigation/pages/favorite_page.dart' as _i5;
import 'package:navigation/pages/favorite_screen.dart' as _i3;
import 'package:navigation/pages/home_page.dart' as _i4;
import 'package:navigation/pages/login_page.dart' as _i1;
import 'package:navigation/pages/nested_page.dart' as _i7;
import 'package:navigation/pages/root_page.dart' as _i2;
import 'package:navigation/pages/under_page.dart' as _i6;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    LoginPage.name: (routeData) {
      final args =
          routeData.argsAs<LoginPageArgs>(orElse: () => const LoginPageArgs());
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: _i1.LoginPage(key: args.key));
    },
    RootPage.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.RootPage());
    },
    FavoritePage.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.FavoritePage());
    },
    HomePage.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.HomePage());
    },
    FavoriteScreenRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.FavoriteScreen());
    },
    UnderPage.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.UnderPage());
    },
    NestedPage.name: (routeData) {
      final args = routeData.argsAs<NestedPageArgs>(
          orElse: () => const NestedPageArgs());
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: _i7.NestedPage(key: args.key));
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(LoginPage.name, path: '/'),
        _i8.RouteConfig(RootPage.name, path: '/root-page', children: [
          _i8.RouteConfig(FavoritePage.name,
              path: 'favorite',
              parent: RootPage.name,
              children: [
                _i8.RouteConfig(FavoriteScreenRoute.name,
                    path: '', parent: FavoritePage.name),
                _i8.RouteConfig(UnderPage.name,
                    path: 'underPage/*', parent: FavoritePage.name)
              ]),
          _i8.RouteConfig(HomePage.name,
              path: 'home-page',
              parent: RootPage.name,
              children: [
                _i8.RouteConfig(NestedPage.name,
                    path: 'nested-page', parent: HomePage.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginPage extends _i8.PageRouteInfo<LoginPageArgs> {
  LoginPage({_i9.Key? key})
      : super(LoginPage.name, path: '/', args: LoginPageArgs(key: key));

  static const String name = 'LoginPage';
}

class LoginPageArgs {
  const LoginPageArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'LoginPageArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.RootPage]
class RootPage extends _i8.PageRouteInfo<void> {
  const RootPage({List<_i8.PageRouteInfo>? children})
      : super(RootPage.name, path: '/root-page', initialChildren: children);

  static const String name = 'RootPage';
}

/// generated route for
/// [_i3.FavoritePage]
class FavoritePage extends _i8.PageRouteInfo<void> {
  const FavoritePage({List<_i8.PageRouteInfo>? children})
      : super(FavoritePage.name, path: 'favorite', initialChildren: children);

  static const String name = 'FavoritePage';
}

/// generated route for
/// [_i4.HomePage]
class HomePage extends _i8.PageRouteInfo<void> {
  const HomePage({List<_i8.PageRouteInfo>? children})
      : super(HomePage.name, path: 'home-page', initialChildren: children);

  static const String name = 'HomePage';
}

/// generated route for
/// [_i5.FavoriteScreen]
class FavoriteScreenRoute extends _i8.PageRouteInfo<void> {
  const FavoriteScreenRoute() : super(FavoriteScreenRoute.name, path: '');

  static const String name = 'FavoriteScreenRoute';
}

/// generated route for
/// [_i6.UnderPage]
class UnderPage extends _i8.PageRouteInfo<void> {
  const UnderPage() : super(UnderPage.name, path: 'underPage/*');

  static const String name = 'UnderPage';
}

/// generated route for
/// [_i7.NestedPage]
class NestedPage extends _i8.PageRouteInfo<NestedPageArgs> {
  NestedPage({_i9.Key? key})
      : super(NestedPage.name,
            path: 'nested-page', args: NestedPageArgs(key: key));

  static const String name = 'NestedPage';
}

class NestedPageArgs {
  const NestedPageArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'NestedPageArgs{key: $key}';
  }
}
