import 'package:auto_size_text/auto_size_text.dart';
import 'package:covidapp/constants/constants.dart';
import 'package:covidapp/model/countries.dart';
import 'package:covidapp/services/countries-data.dart';
import 'package:covidapp/services/country-name.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class StatisticsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _countryData = Provider.of<CountryData>(context, listen: false);
    List<Data> _countries = _countryData.getCountries();
    CountryName _countryName = Provider.of<CountryName>(context);
    var index =
        _countries.indexWhere((prod) => prod.name == _countryName.countryName);
    final formatter = new NumberFormat("#,###");
    // TODO: implement build
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
              height: 76.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: new Color(Constants.colorCases),
              ),
              child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4.0),
                        child: AutoSizeText(
                            "${formatter.format(_countries[index].latestData.confirmed)}",
                            minFontSize: 18,
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                      AutoSizeText("Cases",
                          minFontSize: 14,
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ],
                  ))),
        ),
        SizedBox(
          width: 5.0,
        ),
        Expanded(
          child: Container(
              height: 76.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: new Color(Constants.colorDeaths),
              ),
              child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4.0),
                        child: AutoSizeText(
                            "${formatter.format(_countries[index].latestData.deaths)}",
                            minFontSize: 18,
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                      AutoSizeText("Deaths",
                          minFontSize: 14,
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ],
                  ))),
        ),
        SizedBox(
          width: 5.0,
        ),
        Expanded(
          child: Container(
              height: 76.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: new Color(Constants.colorRecoveries),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4.0),
                      child: AutoSizeText(
                          "${formatter.format(_countries[index].latestData.recovered)}",
                          minFontSize: 18,
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                    AutoSizeText("Recovered",
                        minFontSize: 14,
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              )),
        )
      ],
    );
  }
}
