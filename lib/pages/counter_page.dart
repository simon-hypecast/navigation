
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
    print("init counter");
    number = 0;
  }


    @override
  void dispose() {
    // TODO: implement dispose
    print("dispose counter");
    super.dispose();
  }
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
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
