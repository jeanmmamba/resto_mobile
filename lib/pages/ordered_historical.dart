import 'package:flutter/material.dart';
import 'package:restaurant_mobile_app/widgets/historical_request_widget.dart';

class Historical_Page extends StatefulWidget {
  static String routeName = "/historical_page";
  @override
  _Historical_PageState createState() => _Historical_PageState();
}

class _Historical_PageState extends State<Historical_Page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(children: [
          Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              Text("Historiques des commandes"),
              SizedBox(
                height: 15.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              requestHistorical(),
              requestHistorical(),
              requestHistorical(),
              requestHistorical(),
              requestHistorical(),
            ],
          ),
        ]),
      ),
    );
  }
}

Widget requestHistorical() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: InkWell(
      onTap: () {},
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("ndole"),
                Text(
                  "21/01/2021 10:00",
                  style: TextStyle(fontSize: 10.0),
                ),
              ],
            ),
            Divider(),
          ],
        ),
      ),
    ),
  );
}
