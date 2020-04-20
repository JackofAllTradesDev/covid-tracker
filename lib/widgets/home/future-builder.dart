import 'package:covidapp/model/countries.dart';
import 'package:covidapp/screens/Home.dart';
import 'package:covidapp/services/countries-data.dart';
import 'package:covidapp/services/http-service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FutureBuilderPage extends StatelessWidget {
  final HttpService httpService = HttpService();
  Future<Countries> _refreshController;
  @override
  Widget build(BuildContext context) {
    _refreshController = httpService.countries();
    return FutureBuilder<Countries>(
        future: _refreshController,
//        future: Future.wait([
//          , // Future<bool> firstFuture() async {...}
//          httpService.countries()
//          //... More futures
//        ]),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator());
            case ConnectionState.none:
              return Center(child: CircularProgressIndicator());
            default:
              if (snapshot.hasError)
                return Scaffold(body: Center(child: Text("${snapshot.error}")));
              return RefreshIndicator(
                onRefresh: () async {
                  return _refreshController = httpService.refreshCountries();
                },
                child: HomePage(
                    area: snapshot.data.areas, countries: snapshot.data),
              );
          }
        });
  }
}
