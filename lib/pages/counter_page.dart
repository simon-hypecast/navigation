
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget{
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> with AutomaticKeepAliveClientMixin  {
  late int number;
  @override
  void initState() {
    super.initState();
    number = 0;
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Button clicked: " + number.toString()),
        ElevatedButton(
          onPressed: () {
            setState(() {
              number++;
            });
          },
          child: Text("Button"),
        )
      ],
    );
  }
}
