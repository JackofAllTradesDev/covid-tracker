import 'package:auto_size_text/auto_size_text.dart';
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
    List<Data> _countries = _countryData.getCountries();
    CountryName _countryName = Provider.of<CountryName>(context);
    var index =
        _countries.indexWhere((prod) => prod.name == _countryName.countryName);
    var active = _countries[index].latestData.confirmed -
        _countries[index].latestData.deaths -
        _countries[index].latestData.recovered;

    double activeRate = active / _countries[index].latestData.confirmed * 100;
    double deathRate = _countries[index].latestData.calculated.deathRate;
    double recoveryRate = _countries[index].latestData.calculated.recoveryRate;
    final percent = new NumberFormat("%");

    final List<CovidPercentage> data = [
      CovidPercentage(
          type: "Active",
          num: activeRate,
          barColor: charts.ColorUtil.fromDartColor(Colors.yellowAccent)),
      CovidPercentage(
          type: "Deaths",
          num: deathRate,
          barColor: charts.ColorUtil.fromDartColor(Colors.redAccent)),
      CovidPercentage(
          type: "Recovered",
          num: recoveryRate,
          barColor: charts.ColorUtil.fromDartColor(Colors.greenAccent))
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        MainChartWidget(
          data: data,
        ),
        SizedBox(width: 5.0),
        Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    AutoSizeText(
                      "Active Cases",
                      minFontSize: 12,
                      maxLines: 1,
                      style: TextStyle(
                          color: new Color(Constants.colorActive),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: AutoSizeText(
                        "${percent.format(active / _countries[index].latestData.confirmed)}",
                        minFontSize: 12,
                        maxLines: 1,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      AutoSizeText(
                        "Deaths",
                        minFontSize: 12,
                        maxLines: 1,
                        style: TextStyle(
                            color: new Color(Constants.colorDeaths),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: AutoSizeText(
                          "%${deathRate.roundToDouble()}",
                          minFontSize: 12,
                          maxLines: 1,
                          style: TextStyle(color: Colors.white, fontSize: 16),
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
                      AutoSizeText(
                        "Recovered",
                        minFontSize: 12,
                        maxLines: 1,
                        style: TextStyle(
                            color: new Color(Constants.colorRecoveries),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: AutoSizeText(
                          "%${recoveryRate.roundToDouble()}",
                          minFontSize: 12,
                          maxLines: 1,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
