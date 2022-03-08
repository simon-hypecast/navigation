// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:navigation/pages/favorite_page.dart' as _i4;
import 'package:navigation/pages/home_page.dart' as _i3;
import 'package:navigation/pages/login_page.dart' as _i1;
import 'package:navigation/pages/root_page.dart' as _i2;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    LoginPageRoute.name: (routeData) {
      final args = routeData.argsAs<LoginPageRouteArgs>(
          orElse: () => const LoginPageRouteArgs());
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: _i1.LoginPage(key: args.key));
    },
    RootPageRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.RootPage());
    },
    HomePageRouter.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    },
    FavoritePageRouter.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.FavoritePage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(LoginPageRoute.name, path: '/'),
        _i5.RouteConfig(RootPageRoute.name, path: '/root-page', children: [
          _i5.RouteConfig(HomePageRouter.name,
              path: 'home-page', parent: RootPageRoute.name),
          _i5.RouteConfig(FavoritePageRouter.name,
              path: 'favorite-page', parent: RootPageRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginPageRoute extends _i5.PageRouteInfo<LoginPageRouteArgs> {
  LoginPageRoute({_i6.Key? key})
      : super(LoginPageRoute.name,
            path: '/', args: LoginPageRouteArgs(key: key));

  static const String name = 'LoginPageRoute';
}

class LoginPageRouteArgs {
  const LoginPageRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'LoginPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.RootPage]
class RootPageRoute extends _i5.PageRouteInfo<void> {
  const RootPageRoute({List<_i5.PageRouteInfo>? children})
      : super(RootPageRoute.name,
            path: '/root-page', initialChildren: children);

  static const String name = 'RootPageRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomePageRouter extends _i5.PageRouteInfo<void> {
  const HomePageRouter() : super(HomePageRouter.name, path: 'home-page');

  static const String name = 'HomePageRouter';
}

/// generated route for
/// [_i4.FavoritePage]
class FavoritePageRouter extends _i5.PageRouteInfo<void> {
  const FavoritePageRouter()
      : super(FavoritePageRouter.name, path: 'favorite-page');

  static const String name = 'FavoritePageRouter';
}
