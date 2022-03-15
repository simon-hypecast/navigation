
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final Function callback;
  const DetailsPage({Key? key, required this.callback}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              widget.callback();
            },
            child: const Text("Zurück"),
          ),
          title: const Text("DetailsPage")),
      body: const Center(
        child: Text("DetailsPage"),
      ),
    );
  }
}
