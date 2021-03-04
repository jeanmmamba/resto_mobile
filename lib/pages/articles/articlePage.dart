import 'package:flutter/material.dart';

class ArticlePage extends StatefulWidget {
  final articleData;
  ArticlePage({this.articleData});
  static String routeName = "/articlePage";
  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  @override
  void initState() {
    super.initState();
    print(this.widget.articleData);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
            itemCount: widget.articleData.length,
            itemBuilder: (BuildContext context, int index) {
              ///return ArticleWidget(serviceData: widget.serviceData[index]);
            }),
      ),
    );
  }
}
