import 'package:flutter/material.dart';


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
          onPressed: () {

          },
          child: const Text("go to Nested Page"),
        )
      ],
    );
  }
}
