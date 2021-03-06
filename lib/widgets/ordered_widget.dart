import 'package:flutter/material.dart';

class OrderedHistorical extends StatefulWidget {
  @override
  _OrderedHistoricalState createState() => _OrderedHistoricalState();
}

class _OrderedHistoricalState extends State<OrderedHistorical> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text("okok"),
                  SizedBox(
                    width: 100.0,
                  ),
                  Text("date"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
