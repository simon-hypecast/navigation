import 'package:flutter/material.dart';

class UnderPage extends StatefulWidget {
  const UnderPage({Key? key}) : super(key: key);

  @override
  State<UnderPage> createState() => _UnderPageState();
}

class _UnderPageState extends State<UnderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("UnderPage")),
      body: const Center(child: Text("Under Page")),
    );
  }
}
