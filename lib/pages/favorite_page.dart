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
              onPressed: ()  => context.go('/favoritePage/underPage'),
              child: const Text("Under Page"),
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
