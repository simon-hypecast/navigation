import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation/pages/favorite_page.dart';
import 'package:navigation/pages/home_page.dart';
import 'package:navigation/pages/login_page.dart';
import 'package:navigation/pages/root_page.dart';
import 'package:navigation/pages/under_page.dart';

//New Packages
import 'package:adaptive_navigation/adaptive_navigation.dart';


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
        path: '/homePage',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/favoritePage',
        builder: (context, state) => const FavoritePage(),
        routes: [GoRoute(path: 'underPage',builder: (context, state) => const UnderPage())]
      ),
    ],
    navigatorBuilder: (context, state, child) => Navigator(
      onPopPage: ((route,dynamic result) {
        route.didPop(result);
        return false;
      }),
      pages: [
        MaterialPage<void>(
          child: state.error != null ?
            ErrorScaffold(body: child) :
            SharedScaffold(selectedIndex: state.subloc == '/homePage' ? 0 : 1, body: child)
          )
      ],
    )
  );
}


class SharedScaffold extends StatefulWidget {
  const SharedScaffold({
    required this.selectedIndex,
    required this.body,
    Key? key,
  }) : super(key: key);

  final int selectedIndex;
  final Widget body;

  @override
  State<SharedScaffold> createState() => _SharedScaffoldState();
}

class _SharedScaffoldState extends State<SharedScaffold> {
  @override
  Widget build(BuildContext context) => AdaptiveNavigationScaffold(
        selectedIndex: widget.selectedIndex,
        destinations: const [
          AdaptiveScaffoldDestination(title: 'Home', icon: Icons.first_page),
          AdaptiveScaffoldDestination(title: 'Favorites', icon: Icons.last_page),
        ],
        navigationTypeResolver: (context) =>
            _drawerSize ? NavigationType.drawer : NavigationType.bottom,
        onDestinationSelected: (index) async {
          // if there's a drawer, close it
          if (_drawerSize) Navigator.pop(context);

          switch (index) {
            case 0:
              context.go('/homePage');
              break;
            case 1:
              context.go('/favoritePage');
              break;
            // case 2:
            //   final packageInfo = await PackageInfo.fromPlatform();
            //   showAboutDialog(
            //     context: context,
            //     applicationName: packageInfo.appName,
            //     applicationVersion: 'v${packageInfo.version}',
            //     applicationLegalese: 'Copyright © 2022, Acme, Corp.',
            //   );
            //   break;
            default:
              throw Exception('Invalid index');
          }
        },
        body: widget.body,
      );

  bool get _drawerSize => MediaQuery.of(context).size.width >= 600;
}


class ErrorScaffold extends StatelessWidget {
  const ErrorScaffold({
    required this.body,
    Key? key,
  }) : super(key: key);

  final Widget body;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AdaptiveAppBar(title: const Text('Page Not Found')),
        body: body,
      );
}