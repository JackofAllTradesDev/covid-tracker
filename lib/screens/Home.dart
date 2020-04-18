import 'package:covidapp/model/countries.dart';
import 'package:covidapp/services/theme.dart';
import 'package:covidapp/widgets/live-data.dart';
import 'package:covidapp/widgets/title-widget.dart';
import 'package:covidapp/widgets/total-widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  final List<Areas> area;
  final Countries countries;

  const HomePage({Key key, this.area, this.countries}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: GestureDetector(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "C",
                    style: TextStyle(
                      fontSize: 62,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "ovid-19".toUpperCase(),
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "oronavirus".toUpperCase(),
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    "PH".toUpperCase(),
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TotalWidget(
                countries: countries,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: LiveWidget(),
            ),
//            Padding(
//              padding: const EdgeInsets.all(16.0),
//              child: TitleWidget(
//                area: area,
//              ),
//            ),
          ],
        ),
      ),
    ));
  }
}
