import 'package:flutter/material.dart';
import 'package:navigation/pages/details_page.dart';


class HotelPage extends StatefulWidget {
  const HotelPage({Key? key}) : super(key: key);

  @override
  State<HotelPage> createState() => _HotelPageState();
}

class _HotelPageState extends State<HotelPage> with AutomaticKeepAliveClientMixin{
  late bool _toggleDetails;

  void resetToggleDetails (){
    setState(() {
      _toggleDetails = false;
    });
  }

  @override
  void initState() {
    print("initState HotelPage");
    _toggleDetails = false;
    super.initState();
  }

  @override
  void dispose() {
    print("dispose HotelPage");
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    print("building HotelPage");
    return _toggleDetails ? DetailsPage(callback: resetToggleDetails) : Column(
      children: [
        const Center(
          child: Text('HotelPage'),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _toggleDetails = true;
            });
          },
          child: const Text("open to Details"),
        )
      ],
    );
  }
}
