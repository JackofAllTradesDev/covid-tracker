import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/cupertino.dart';

class CovidPercentage {
  final String type;
  final double num;
  final charts.Color barColor;

  CovidPercentage(
      {@required this.type, @required this.num, @required this.barColor});
}
