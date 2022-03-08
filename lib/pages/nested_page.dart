import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:navigation/routes/router.gr.dart';

class NestedPage extends StatefulWidget {
  const NestedPage({Key? key}) : super(key: key);

  @override
  State<NestedPage> createState() => _NestedPageState();
}

class _NestedPageState extends State<NestedPage> {
  @override
  void dispose() {
    print("dispose NestedPage");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("building NestedPage");
    return Scaffold(
      appBar: AppBar(title: Text("NestedPage")),
      body: Column(
        children: [
          const Center(
            child: Text('NestedPage'),
          ),
          ElevatedButton(
            onPressed: () => context.router.navigate(const AudioPlayer()),
            child: Text("open AudioPlayer"),
          )
        ],
      ),
    );
  }
}
