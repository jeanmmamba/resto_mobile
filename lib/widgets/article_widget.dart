import 'package:flutter/material.dart';

class ArticleWidget extends StatefulWidget {
  final articleData;
  ArticleWidget({@required this.articleData});
  @override
  _ArticleWidgetState createState() => _ArticleWidgetState();
}

class _ArticleWidgetState extends State<ArticleWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100.0,
              width: 100.0,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/okok.jpg'),
              ),
            ),
            SizedBox(
              height: 3.0,
            ),
            Text(widget.articleData['name']),
            SizedBox(
              height: 3.0,
            ),
            Text(widget.articleData['prix']),
          ],
        ),
      ),
    );
  }
}
