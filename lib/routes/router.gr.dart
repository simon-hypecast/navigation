// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:navigation/pages/favorite_page.dart' as _i3;
import 'package:navigation/pages/home_page.dart' as _i4;
import 'package:navigation/pages/login_page.dart' as _i1;
import 'package:navigation/pages/nested_page.dart' as _i6;
import 'package:navigation/pages/root_page.dart' as _i2;
import 'package:navigation/pages/under_page.dart' as _i5;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    LoginPage.name: (routeData) {
      final args =
          routeData.argsAs<LoginPageArgs>(orElse: () => const LoginPageArgs());
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: _i1.LoginPage(key: args.key));
    },
    RootPage.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.RootPage());
    },
    FavoritePage.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.FavoritePage());
    },
    HomePage.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.HomePage());
    },
    UnderPage.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.UnderPage());
    },
    NestedPage.name: (routeData) {
      final args = routeData.argsAs<NestedPageArgs>(
          orElse: () => const NestedPageArgs());
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: _i6.NestedPage(key: args.key));
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(LoginPage.name, path: '/'),
        _i7.RouteConfig(RootPage.name, path: '/root-page', children: [
          _i7.RouteConfig(FavoritePage.name,
              path: 'favorite-page',
              parent: RootPage.name,
              children: [
                _i7.RouteConfig(UnderPage.name,
                    path: 'under-page', parent: FavoritePage.name)
              ]),
          _i7.RouteConfig(HomePage.name,
              path: 'home-page',
              parent: RootPage.name,
              children: [
                _i7.RouteConfig(NestedPage.name,
                    path: 'nested-page', parent: HomePage.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginPage extends _i7.PageRouteInfo<LoginPageArgs> {
  LoginPage({_i8.Key? key})
      : super(LoginPage.name, path: '/', args: LoginPageArgs(key: key));

  static const String name = 'LoginPage';
}

class LoginPageArgs {
  const LoginPageArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'LoginPageArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.RootPage]
class RootPage extends _i7.PageRouteInfo<void> {
  const RootPage({List<_i7.PageRouteInfo>? children})
      : super(RootPage.name, path: '/root-page', initialChildren: children);

  static const String name = 'RootPage';
}

/// generated route for
/// [_i3.FavoritePage]
class FavoritePage extends _i7.PageRouteInfo<void> {
  const FavoritePage({List<_i7.PageRouteInfo>? children})
      : super(FavoritePage.name,
            path: 'favorite-page', initialChildren: children);

  static const String name = 'FavoritePage';
}

/// generated route for
/// [_i4.HomePage]
class HomePage extends _i7.PageRouteInfo<void> {
  const HomePage({List<_i7.PageRouteInfo>? children})
      : super(HomePage.name, path: 'home-page', initialChildren: children);

  static const String name = 'HomePage';
}

/// generated route for
/// [_i5.UnderPage]
class UnderPage extends _i7.PageRouteInfo<void> {
  const UnderPage() : super(UnderPage.name, path: 'under-page');

  static const String name = 'UnderPage';
}

/// generated route for
/// [_i6.NestedPage]
class NestedPage extends _i7.PageRouteInfo<NestedPageArgs> {
  NestedPage({_i8.Key? key})
      : super(NestedPage.name,
            path: 'nested-page', args: NestedPageArgs(key: key));

  static const String name = 'NestedPage';
}

class NestedPageArgs {
  const NestedPageArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'NestedPageArgs{key: $key}';
  }
}
