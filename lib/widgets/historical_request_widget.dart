import 'package:flutter/material.dart';

class RequestHistoricalWidget extends StatefulWidget {
  @override
  _RequestHistoricalWidgetState createState() =>
      _RequestHistoricalWidgetState();
}

class _RequestHistoricalWidgetState extends State<RequestHistoricalWidget> {
  @override
  Widget build(BuildContext context) {
    return requestHistorical();
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
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              "21/01/2021 10:00",
              style: TextStyle(fontSize: 10.0),
            ),
            Divider(),
          ],
        ),
      ),
    ),
  );
}
