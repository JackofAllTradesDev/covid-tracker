import 'package:auto_size_text/auto_size_text.dart';
import 'package:covidapp/constants/constants.dart';
import 'package:covidapp/model/countries.dart';
import 'package:covidapp/services/countries-data.dart';
import 'package:covidapp/services/country-name.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class PanelStatsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _countryData = Provider.of<CountryData>(context, listen: false);
    List<Data> _countries = _countryData.getCountries();
    CountryName _countryName = Provider.of<CountryName>(context);
    var index =
        _countries.indexWhere((prod) => prod.name == _countryName.countryName);
    var now = DateTime.parse(_countries[index].updatedAt);
    final formatter = new NumberFormat("#,###");
    String formattedDate = DateFormat('MMMM d y hh:mm a').format(now);
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            top: 16.0,
            left: 16.0,
            right: 16.0,
          ),
          child: Row(
            children: <Widget>[
              Text("${_countryName.countryName}",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
              Spacer(),
              Text("$formattedDate",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          AutoSizeText("Cases",
                              minFontSize: 12,
                              maxLines: 1,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: new Color(Constants.colorCases),
                                  fontWeight: FontWeight.bold)),
                          AutoSizeText(
                              "${formatter.format(_countries[index].latestData.confirmed)}",
                              minFontSize: 12,
                              maxLines: 1,
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ],
                      )),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          AutoSizeText("Deaths",
                              minFontSize: 12,
                              maxLines: 1,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: new Color(Constants.colorDeaths),
                                  fontWeight: FontWeight.bold)),
                          AutoSizeText(
                              "${formatter.format(_countries[index].latestData.deaths)}",
                              minFontSize: 12,
                              maxLines: 1,
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ],
                      )),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          AutoSizeText("Recovered",
                              minFontSize: 12,
                              maxLines: 1,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: new Color(Constants.colorRecoveries),
                                  fontWeight: FontWeight.bold)),
                          AutoSizeText(
                              "${formatter.format(_countries[index].latestData.recovered)}",
                              minFontSize: 12,
                              maxLines: 1,
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
