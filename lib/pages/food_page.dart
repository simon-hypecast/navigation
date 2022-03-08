import 'package:flutter/material.dart';
import 'package:navigation/pages/nested_page.dart';


class FoodPage extends StatefulWidget {

  FoodPage({Key? key}) : super(key: key);

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
            Navigator.push(context, MaterialPageRoute(builder: (context) => NestedPage()));
          },
          child: Text("go to Nested Page"),
        )
      ],
    );
  }
}
