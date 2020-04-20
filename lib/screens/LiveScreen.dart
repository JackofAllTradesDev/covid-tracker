import 'package:covidapp/constants/constants.dart';
import 'package:covidapp/model/countries.dart';
import 'package:covidapp/services/countries-data.dart';
import 'package:covidapp/services/country-name.dart';
import 'package:covidapp/widgets/live/bar.dart';
import 'package:covidapp/widgets/live/chart.dart';
import 'package:covidapp/widgets/live/countries-dropdown.dart';
import 'package:covidapp/widgets/live/map-location.dart';
import 'package:covidapp/widgets/live/panel-statistics.dart';
import 'package:covidapp/widgets/live/statistics.dart';
import 'package:covidapp/widgets/live/title-widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class LivePage extends StatelessWidget {
  final Countries countries;

  const LivePage({Key key, this.countries}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var now = DateTime.parse(countries.lastUpdated);
    String formattedDate = DateFormat('MMMM d y hh:mm a').format(now);
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<CountryData>(
            create: (_) => CountryData(countries),
          ),
          ChangeNotifierProvider<CountryName>(
            create: (_) => CountryName(),
          )
        ],
        child: Scaffold(
            body: Stack(
          children: <Widget>[
            Center(
              child: MapWidget(),
            ),
            SafeArea(
                child: Column(
              children: <Widget>[
                AppBarLiveWidget(),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 12.0, left: 18.0, right: 18.0),
                  child: Align(
                      alignment: Alignment.topCenter, child: DropdownWidget()),
                ),
              ],
            )),
            SlidingUpPanel(
              margin: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(18.0),
                  topLeft: Radius.circular(18.0)),
              color: new Color(Constants.colorMap),
              minHeight: 160.0,
              panel: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: PanelStatsWidget(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ChartWidget(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Last Updated: ${formattedDate}",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                    ),
                  )
                ],
              ),
              collapsed: Container(
                decoration: BoxDecoration(
                  color: new Color(Constants.colorMap),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(18.0),
                      topLeft: Radius.circular(18.0)),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 16.0, top: 4.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text("Current outbreak",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )),
                        ),
                        StatisticsWidget(),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        )));
  }
}
