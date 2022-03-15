import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation/pages/favorite_page.dart';
import 'package:navigation/pages/home_page.dart';
import 'package:navigation/pages/login_page.dart';


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
        path: '/home',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/favorite',
        builder: (context, state) => const FavoritePage(),
      ),
    ],
  );
}