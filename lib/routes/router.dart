import 'package:auto_route/auto_route.dart';
import 'package:navigation/pages/favorite_page.dart';
import 'package:navigation/pages/home_page.dart';
import 'package:navigation/pages/login_page.dart';
import 'package:navigation/pages/root_page.dart';

@AdaptiveAutoRouter(
    replaceInRouteName: 'Page,Route,Screen',
    routes: <AutoRoute>[
      AutoRoute(page: LoginPage, initial: true),
      AutoRoute(page: RootPage, children: [
        AutoRoute(name: "HomePageRouter", page: HomePage),
        AutoRoute(name: "FavoritePageRouter", page: FavoritePage)
      ]),
    ],
)
class $AppRouter {}