import 'package:covidapp/model/countries.dart';
import 'package:covidapp/services/countries-data.dart';
import 'package:covidapp/services/country-name.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class CountriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _countryData = Provider.of<CountryData>(context, listen: false);
    Countries _countries = _countryData.getCountries();
    CountryName _countryName = Provider.of<CountryName>(context);
    var now = DateTime.parse(_countries.lastUpdated);
    String formattedDate = DateFormat('MMMM d y hh:mm a').format(now);
    // TODO: implement build
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Current outbreak",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )),
          Padding(
            padding: const EdgeInsets.only(top: 3.0, bottom: 4.0),
            child: DropdownButton<String>(
                value: _countryName.countryName,
                icon: Icon(Icons.arrow_drop_down),
                isExpanded: true,
                underline: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Colors.transparent, width: 0.0))),
                ),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
                onChanged: (String newValue) {
                  Provider.of<CountryName>(context, listen: false)
                      .setCountry(newValue);
                },
                items: _countries.areas
                    .map((fc) => DropdownMenuItem<String>(
                          child: Text(fc.displayName),
                          value: fc.displayName,
                        ))
                    .toList()),
          ),
          Text("$formattedDate",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              )),
        ],
      ),
    );
  }
}
