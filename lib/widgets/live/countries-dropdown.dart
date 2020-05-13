import 'package:covidapp/model/countries.dart';
import 'package:covidapp/services/countries-data.dart';
import 'package:covidapp/services/country-name.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DropdownWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _countryData = Provider.of<CountryData>(context, listen: false);
    List<Data> _countries = _countryData.getCountries();
    CountryName _countryName = Provider.of<CountryName>(context);
    _countries.sort((a, b) {
      return b.latestData.confirmed.compareTo(a.latestData.confirmed);
    });
    List<Data> index =
        _countries.where((prod) => prod.latestData.confirmed != 0).toList();
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: Colors.white.withOpacity(0.5)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButtonHideUnderline(
          child: ButtonTheme(
            alignedDropdown: true,
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
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
                onChanged: (String newValue) {
                  Provider.of<CountryName>(context, listen: false)
                      .setCountry(newValue);
                },
                items: index
                    .map((fc) => DropdownMenuItem<String>(
                          child: Text(fc.name),
                          value: fc.name,
                        ))
                    .toList()),
          ),
        ),
      ),
    );
  }
}
