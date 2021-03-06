import 'package:flutter/material.dart';
import 'package:restaurant_mobile_app/widgets/article_widget.dart';
import 'package:restaurant_mobile_app/pages/Ordered/ordered_form.dart';
import 'package:restaurant_mobile_app/pages/categories/models/category_model.dart';
import 'package:restaurant_mobile_app/pages/articles/models/article_model.dart';

class ArticlePage extends StatefulWidget {
  final articleData;
  ArticlePage({@required this.articleData});
  static String routeName = "/articlePage";

  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  List<CategorieData> categorieData;
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
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => FormOrdered(
                      formData: widget.articleData['name'],
                    ),
                  ),
                );
              },
              child: ArticleWidget(articleData: widget.articleData[index]),
            );
          },
        ),
      ),
    );
  }
}
