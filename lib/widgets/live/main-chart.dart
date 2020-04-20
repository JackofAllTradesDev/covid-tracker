import 'dart:math';

import 'package:charts_flutter/flutter.dart';
import 'package:covidapp/constants/constants.dart';
import 'package:covidapp/model/chart-model.dart';
import 'package:covidapp/model/countries.dart';
import 'package:covidapp/services/countries-data.dart';
import 'package:covidapp/services/country-name.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class MainChartWidget extends StatelessWidget {
  final List<CovidPercentage> data;
  MainChartWidget({@required this.data});
  @override
  Widget build(BuildContext context) {
    List<charts.Series<CovidPercentage, String>> series = [
      charts.Series(
          id: "Statistics",
          data: data,
          domainFn: (CovidPercentage segment, _) => segment.type,
          measureFn: (CovidPercentage segment, _) => segment.num,
          colorFn: (CovidPercentage segment, _) => segment.barColor)
    ];

    // TODO: implement build
    return Container(
      height: 200.0,
      width: 200,
      child: charts.PieChart(series,
          animate: true,
          // Configure the width of the pie slices to 30px. The remaining space in
          // the chart will be left as a hole in the center. Adjust the start
          // angle and the arc length of the pie so it resembles a gauge.
          defaultRenderer: new charts.ArcRendererConfig(arcWidth: 50)),
    );
  }
}
