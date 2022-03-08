import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:navigation/pages/favorite_page.dart';
import 'package:navigation/pages/home_page.dart';
import 'package:navigation/routes/router.gr.dart';


class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  late int _index;

  @override
  void initState() {
    print("initState in rootPage");
    super.initState();
    _index = 0;
  }
  @override
  void dispose() {
    print("dispose rootPage");
    super.dispose();
  }

  @override
  Widget build(context) {
    return AutoTabsScaffold(
      routes: const [
        HomePageRouter(),
        FavoritePageRouter()
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
          ],
        );
      },
    );
  }
}
