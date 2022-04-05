import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation/pages/audio_player.dart';
import 'package:navigation/pages/favorite_page.dart';
import 'package:navigation/pages/home_page.dart';
import 'package:navigation/pages/login_page.dart';
import 'package:navigation/pages/nested_page.dart';
import 'package:navigation/pages/root_page.dart';
import 'package:navigation/pages/settings_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp.router(
    routeInformationParser: _router.routeInformationParser,
    routerDelegate: _router.routerDelegate,
    title: "Navigation",
  );

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/audioPlayer',
        builder: (context, state) => const AudioPlayer(),
      ),
      GoRoute(
        path: '/rootPage',
        builder: (context, state) => const RootPage(),
        routes: [
          GoRoute(
            path: 'homePage',
            builder: (context, state) => const HomePage(),
              routes: [
                GoRoute(
                  path: 'nestedPage',
                  builder: (context, state) => const NestedPage(),
                ),
              ]
          ),
          GoRoute(
            path: 'favoritePage',
            builder: (context, state) => const FavoritePage(),
            routes: [
              GoRoute(
                path: 'settingsPage',
                builder: (context, state) => const SettingsPage(),
              ),
            ]
          ),
        ]
      ),
    ],
  );
}