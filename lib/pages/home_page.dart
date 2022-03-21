import 'package:flutter/material.dart';
import 'package:navigation/pages/counter_page.dart';
import 'package:navigation/pages/food_page.dart';
import 'package:navigation/pages/hotel_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }): super(key: key);

  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    print("dispose HomePage");
    super.dispose();
  }

  @override
  void didUpdateWidget(HomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    print("building HomePage");
    super.build(context); //Nach AutomaticKeepAliveClientMixin
    return Scaffold(
      appBar: AppBar(
        title: const Text("Traveler"),
        bottom: TabBar(controller: _controller, tabs: const <Tab>[
          Tab(text: "COUNTER"),
          Tab(text: "HOTEL"),
          Tab(text: "FOOD"),
        ]),
      ),
      body: TabBarView(
        controller: _controller,
        children: const <Widget>[
          CounterPage(),
          HotelPage(),
          FoodPage(),
        ],
      ),
    );
  }
}