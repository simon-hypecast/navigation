import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  void dispose() {
    print("dispose FavoritePage");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("building FavoritePage");
    return Scaffold(
        appBar: AppBar(title: const Text("FavoritePage")),
        body: Column(
          children: [
            const Center(
              child: Text('FavoritePage'),
            ),
            ElevatedButton(
              onPressed: ()  => context.push('/rootPage/favoritePage/settingsPage'),
              child: const Text("Settings Page"),
            ),
            ElevatedButton(
              onPressed: ()  => context.go('/'),
              child: const Text("Logout"),
            )
          ],
        ),
    );
  }
}
