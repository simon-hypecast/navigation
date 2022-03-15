
import 'package:flutter/material.dart';
import 'package:navigation/pages/favorite_page.dart';
import 'package:navigation/pages/home_page.dart';


class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;
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

  //This refers to the tabs of the bottom Navigation Bar
  void _onSelectItem(int selectedIndex, BuildContext context) {
    // TODO: Reload Page if sameIndex in BottomNavigationBar is clicked
    setState(() => _currentIndex = selectedIndex);
  }


  @override
  Widget build(context) {
    return Scaffold(
        body: IndexedStack(
          children: const <Widget>[
            HomePage(),
            FavoritePage()
          ], index: _currentIndex,
        ),
        bottomNavigationBar:  BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => _onSelectItem(index, context),
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
        )
    );
  }
}
