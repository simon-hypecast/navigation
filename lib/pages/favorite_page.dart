import 'package:flutter/material.dart';


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
              onPressed: () {

              },
              child: const Text("Under Page"),
            ),
            ElevatedButton(
              onPressed: () {

              },
              child: const Text("Logout"),
            )
          ],
        ),
    );
  }
}
