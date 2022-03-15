
import 'package:flutter/material.dart';


class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {

  @override
  void initState() {
    print("initState in RootPage");
    super.initState();
  }
  @override
  void dispose() {
    print("dispose RootPage");
    super.dispose();
  }

  @override
  Widget build(context) {
    return Container();
    // return AutoTabsScaffold(
    //   routes: const [
    //     HomeScreen(),
    //     FavoriteScreen()
    //   ],
    //   bottomNavigationBuilder: (_, tabsRouter) {
    //     return BottomNavigationBar(
    //       currentIndex: tabsRouter.activeIndex,
    //       onTap: tabsRouter.setActiveIndex,
    //       items: const [
    //         BottomNavigationBarItem(
    //           icon: Icon(Icons.home),
    //           label: 'Home',
    //         ),
    //         BottomNavigationBarItem(
    //           icon: Icon(Icons.favorite),
    //           label: 'Favorites',
    //         ),
    //       ],
    //     );
    //   },
    // );
  }
}
