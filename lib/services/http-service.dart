import 'package:covidapp/model/countries.dart';
import 'package:covidapp/model/timeline.dart';
import 'package:dio/dio.dart';

class HttpService {
  final String getCountries = "https://corona-api.com/countries";
  final String getTimeline = "https://corona-api.com/timeline";
  Dio dio = new Dio();

  Future<Countries> countries() async {
    var response = await dio.get(getCountries);

    var res = Countries.fromJson(response.data);
    return res;
  }

  Future<Timeline> timeline() async {
    var response = await dio.get(getTimeline);

    var res = Timeline.fromJson(response.data);
    return res;
  }

  Future<Countries> refreshCountries() async {
    await Future.delayed(Duration(seconds: 2));
    var response = await dio.get(getCountries);

    var res = Countries.fromJson(response.data);
    ;
    return res;
  }
}
