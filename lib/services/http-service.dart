import 'package:covidapp/model/countries.dart';
import 'package:dio/dio.dart';

class HttpService {
  final String getCountries = "https://bing.com/covid/data";
  final String test = "http://corona-api.com/countries/PH";
  Dio dio = new Dio();

  Future<Countries> countries() async {
    var response = await dio.get(getCountries);

    var res = Countries.fromJson(response.data);
//    print("test $res");
    return res;
  }

  Future<Countries> refreshCountries() async {
    await Future.delayed(Duration(seconds: 2));
    var response = await dio.get(getCountries);

    var res = Countries.fromJson(response.data);
//    print("test $res");
    return res;
  }
}
