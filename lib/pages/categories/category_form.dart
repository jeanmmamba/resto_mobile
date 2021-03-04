import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_mobile_app/core/contants/api_constante.dart';
import 'package:dio/dio.dart';

class FormOrdered extends StatefulWidget {
  static String routName = '/formOrdered';
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

  _register() async {
    Dio dio = Dio();
    var postData = {
      'qte': _qte,
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
  }

  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: _qte,
            validator: (_qte) {
              if (_qte.isEmpty) {
                return 'renseingnez ce champ';
              }
            },
          ),
        ],
      ),
    );
  }
}
