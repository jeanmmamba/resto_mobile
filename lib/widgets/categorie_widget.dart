import 'package:flutter/material.dart';
import 'package:restaurant_mobile_app/pages/categories/models/category_model.dart';

class CategorieWidget extends StatefulWidget {
  final categorieData;
  CategorieWidget({@required this.categorieData});
  @override
  _CategorieWidgetState createState() => _CategorieWidgetState();
}

class _CategorieWidgetState extends State<CategorieWidget> {
  @override
  Widget build(BuildContext context) {
    return buildCategorie(widget.categorieData);
  }

  Widget buildCategorie(Category categorie) {
    return Container(
      height: 50.0,
      width: 100.0,
      child: Card(
        elevation: 3.0,
        shadowColor: Colors.blue,
        child: Center(
          child: Text(
            widget.categorieData.name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
