import 'package:auto_route/auto_route.dart';
import 'package:navigation/pages/favorite_screen.dart';
import 'package:navigation/pages/home_page.dart';
import 'package:navigation/pages/login_page.dart';
import 'package:navigation/pages/nested_page.dart';
import 'package:navigation/pages/root_page.dart';
import 'package:navigation/pages/under_page.dart';
import 'package:navigation/pages/favorite_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route,Screen',
  routes: <AutoRoute>[
    AutoRoute(name: "LoginPage", page: LoginPage, initial: true),
    AutoRoute(
        name: "RootPage",
        page: RootPage,
        children: [favoritePageRoute, homePageRoute]),
  ],
)
class $AppRouter {}

const favoritePageRoute = AutoRoute(
  path: 'favorite',
  name: "FavoriteScreen",
  page: FavoriteScreen,
  children: [
    AutoRoute(path: '', page: FavoritePage),
    AutoRoute(path: 'underPage/*', name: "UnderPage", page: UnderPage),
  ],
);

const homePageRoute = AutoRoute(
  name: "HomePage",
  page: HomePage,
  children: [
    AutoRoute(
      name: 'NestedPage',
      page: NestedPage,
    ),
  ],
);
