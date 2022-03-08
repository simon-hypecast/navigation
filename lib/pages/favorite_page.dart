import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:navigation/routes/router.gr.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
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
              onPressed: () => context.router.navigate(const UnderPage()),
              child: const Text("Under Page"),
            ),
            ElevatedButton(
              onPressed: () => context.router.replace(LoginPage()),
              child: const Text("Logout"),
            )
          ],
        ),
    );
  }
}
