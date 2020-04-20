import 'package:covidapp/constants/constants.dart';
import 'package:covidapp/model/chart-model.dart';
import 'package:covidapp/model/countries.dart';
import 'package:covidapp/services/countries-data.dart';
import 'package:covidapp/services/country-name.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'main-chart.dart';

class ChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _countryData = Provider.of<CountryData>(context, listen: false);
    Countries _countries = _countryData.getCountries();
    CountryName _countryName = Provider.of<CountryName>(context);
    var index = _countries.areas
        .indexWhere((prod) => prod.displayName == _countryName.countryName);
    var active = _countries.areas[index].totalConfirmed -
        _countries.areas[index].totalDeaths -
        _countries.areas[index].totalRecovered;
    final percent = new NumberFormat("%");

    double activeRate = active / _countries.areas[index].totalConfirmed * 100;
    double deathRate = _countries.areas[index].totalDeaths /
        _countries.areas[index].totalConfirmed *
        100;
    double recoveryRate = _countries.areas[index].totalRecovered /
        _countries.areas[index].totalConfirmed *
        100;

    final List<CovidPercentage> data = [
      CovidPercentage(
          type: "Active",
          num: activeRate.roundToDouble(),
          barColor: charts.ColorUtil.fromDartColor(Colors.yellowAccent)),
      CovidPercentage(
          type: "Deaths",
          num: deathRate.roundToDouble(),
          barColor: charts.ColorUtil.fromDartColor(Colors.redAccent)),
      CovidPercentage(
          type: "Recovered",
          num: recoveryRate.roundToDouble(),
          barColor: charts.ColorUtil.fromDartColor(Colors.greenAccent))
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          MainChartWidget(
            data: data,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Active Cases",
                            style: TextStyle(
                                color: new Color(Constants.colorActive),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              "${percent.format(active / _countries.areas[index].totalConfirmed)}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Deaths",
                            style: TextStyle(
                                color: new Color(Constants.colorDeaths),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              "${percent.format(_countries.areas[index].totalDeaths / _countries.areas[index].totalConfirmed)}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Recovered",
                            style: TextStyle(
                                color: new Color(Constants.colorRecoveries),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              "${percent.format(_countries.areas[index].totalRecovered / _countries.areas[index].totalConfirmed)}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
