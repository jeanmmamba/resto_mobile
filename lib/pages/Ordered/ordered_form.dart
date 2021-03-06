import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_mobile_app/core/contants/api_constante.dart';
import 'package:dio/dio.dart';
import 'package:restaurant_mobile_app/core/models/api_response.dart';
import 'dart:convert';

class FormOrdered extends StatefulWidget {
  static String routName = '/formOrdered';
  final formData;
  FormOrdered({@required this.formData});
  @override
  _FormOrderedState createState() => _FormOrderedState();
}

class _FormOrderedState extends State<FormOrdered> {
  TextEditingController _qte;
  bool showloader = false;

  @override
  void initState() {
    super.initState();
    _qte = TextEditingController();
  }

  register() async {
    Dio dio = Dio();
    var postData = {
      'qte': _qte.text,
    };

    if (_qte.text.isEmpty) {
      print("veuillez renseigner tousles champs");
    }

    setState(() {
      showloader = true;
    });

    var response = await dio.post(
      ApiConst.baseUrl + ApiConst.orderedUrl,
      data: postData,
    );

    if (response.statusCode == 200) {
      ApiResponse apiResponse = apiResponseFromJson(
        json.encode(response.data),
      );
      print(response.data);
      if (apiResponse.success) {
        print("creation du compte éffectuée");
      } else {
        print(apiResponse.message);
      }
    }
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: _qte,
                  decoration: InputDecoration(labelText: "quantité"),
                ),
                Container(
                  width: double.infinity,
                  height: 40.0,
                  child: RaisedButton(
                    elevation: 0.0,
                    onPressed: () => register(),
                    color: Colors.blue,
                    child: Text("commandez"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
