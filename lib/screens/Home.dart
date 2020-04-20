import 'package:covidapp/model/countries.dart';
import 'package:covidapp/widgets/home/info.dart';
import 'package:covidapp/widgets/home/live-data.dart';
import 'package:covidapp/widgets/home/prevention.dart';
import 'package:covidapp/widgets/home/symptoms.dart';
import 'package:covidapp/widgets/home/total-widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  final List<Areas> area;
  final Countries countries;

  const HomePage({Key key, this.area, this.countries}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: SafeArea(
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
                padding:
                    const EdgeInsets.only(top: 12.0, left: 16.0, right: 16.0),
                child: LiveWidget(
                  countries: countries,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 12.0, left: 16.0, right: 16.0),
                child: InfoWidget(),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 12.0, left: 16.0, right: 16.0),
                child: SymptomsWidgets(),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 12.0, left: 16.0, right: 16.0),
                child: PreventionWidget(),
              ),
              SizedBox(
                height: 18.0,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
