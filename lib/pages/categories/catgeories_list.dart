import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:restaurant_mobile_app/pages/categories/models/category_model.dart';
import 'package:restaurant_mobile_app/core/contants/api_constante.dart';
import 'package:restaurant_mobile_app/core/models/api_response.dart';
import 'package:dio/dio.dart';
import 'package:restaurant_mobile_app/widgets/categorie_widget.dart';
import 'package:restaurant_mobile_app/pages/articles/articlePage.dart';

class CategorieList extends StatefulWidget {
  static String routeName = '/CategoriesListe';
  @override
  _CategorieListState createState() => _CategorieListState();
}

class _CategorieListState extends State<CategorieList> {
  CategorieData categorieData;
  bool loading = true;

  getCategorie() async {
    Dio dio = Dio();
    final response = await dio.get(ApiConst.baseUrl + ApiConst.getCategorieUrl);

    if (response.statusCode == 200) {
      ApiResponse apiResponse = apiResponseFromJson(
        json.encode(response.data),
      );
      print(response.data);
      if (apiResponse.success) {
        setState(() {
          categorieData = categorieDataFromJson(
            json.encode(apiResponse.data),
          );
          loading = false;
        });
      }
    } else {
      print(response);
      setState(() {
        loading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getCategorie();
  }

  @override
  Widget build(BuildContext context) {
    return categoriesList();
  }

  Widget categoriesList() {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(' categories'),
        ),
        body: loading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  itemCount: categorieData.data.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 3.0,
                      mainAxisSpacing: 0.3),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () => {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => ArticlePage(
                                  //articleData: categorieData[index].article,
                                  )),
                        ),
                      },
                      child: CategorieWidget(
                          categorieData: categorieData.data[index]),
                    );
                  },
                ),
              ),
      ),
    );
  }
}
