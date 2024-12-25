import 'dart:convert';

import 'package:adv_flutter_ch_3/api%20app/model/placeholder_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ApiHelper {
  ApiHelper._();

  static ApiHelper apiHelper = ApiHelper._();

  String api = "https://jsonplaceholder.typicode.com/posts";

  Future<List> apiFetch() async {
    Uri uri = Uri.parse(api);
    Response response = await http.get(uri);

    if (response.statusCode == 200) {
      List dataList = jsonDecode(response.body);
      return dataList;
    }
    return [];
  }
}
