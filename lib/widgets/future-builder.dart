import 'package:covidapp/screens/Home.dart';
import 'package:covidapp/services/http-service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FutureBuilderPage extends StatelessWidget {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
        future: Future.wait([
          httpService.countries(), // Future<bool> firstFuture() async {...}
          //... More futures
        ]),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator());
            case ConnectionState.none:
              return Center(child: CircularProgressIndicator());
            default:
              if (snapshot.hasError)
                return Scaffold(body: Center(child: Text("${snapshot.error}")));
//              print(snapshot.data[0]);
              return HomePage(
                area: snapshot.data[0].areas,
                countries: snapshot.data[0],
              );
          }
        });
  }
}
