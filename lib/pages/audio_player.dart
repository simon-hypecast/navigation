import 'package:flutter/material.dart';

class AudioPlayer extends StatelessWidget {
  const AudioPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("Audio Player")),
        body: const Center(child: Text("AudioPlayer")));
  }
}
