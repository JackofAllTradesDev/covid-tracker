import 'package:covidapp/model/countries.dart';
import 'package:flutter/material.dart';

class CountryData with ChangeNotifier {
  Countries _countries;

  CountryData(this._countries);
  getCountries() => _countries;
}
