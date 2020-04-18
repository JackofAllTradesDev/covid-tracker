import 'dart:convert';

import 'package:covidapp/model/countries.dart';
import 'package:dio/dio.dart';

class HttpService {
  final String getCountries = "https://bing.com/covid/data";
  Dio dio = new Dio();

  Future<Countries> countries() async {
    var response = await dio.get(getCountries);

    var res = Countries.fromJson(response.data);
    return res;
  }
}
