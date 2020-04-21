import 'package:covidapp/model/countries.dart';
import 'package:covidapp/screens/ErrorScreen.dart';
import 'package:covidapp/screens/Home.dart';
import 'package:covidapp/screens/InternetScreen.dart';
import 'package:covidapp/services/connectivity.dart';
import 'package:covidapp/services/http-service.dart';
import 'package:covidapp/services/retry.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FutureBuilderPage extends StatelessWidget {
  final HttpService httpService = HttpService();
  @override
  Widget build(BuildContext context) {
    var controller = Provider.of<RetryChanger>(context);
    var network = Provider.of<ConnectionStatus>(context);
    if (network == ConnectionStatus.wifi ||
        network == ConnectionStatus.mobileData) {
      return FutureBuilder<Countries>(
          future: controller.getController(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Scaffold(
                  backgroundColor: Colors.white,
                  body: Center(
                      child: CircularProgressIndicator(
                    backgroundColor: Colors.white,
                  )),
                );
              case ConnectionState.none:
                return Scaffold(
                  backgroundColor: Colors.white,
                  body: Center(
                      child: CircularProgressIndicator(
                    backgroundColor: Colors.white,
                  )),
                );
              default:
                if (snapshot.hasError)
                  return Scaffold(body: Center(child: ErrorPage()));
                return RefreshIndicator(
                  onRefresh: () async {
                    controller.setController(httpService.refreshCountries());
                  },
                  child: HomePage(
                      area: snapshot.data.areas, countries: snapshot.data),
                );
            }
          });
    } else {
      return InternetPage();
    }
  }
}
