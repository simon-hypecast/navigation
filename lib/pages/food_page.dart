import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:navigation/routes/router.gr.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  void dispose() {
    print("dispose FoodPage");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("building FoodPage");
    return Column(
      children: [
        const Center(
          child: Text('FoodPage'),
        ),
        ElevatedButton(
          onPressed: () => context.router.navigate(const NestedPage()),
          child: const Text("go to Nested Page"),
        )
      ],
    );
  }
}
