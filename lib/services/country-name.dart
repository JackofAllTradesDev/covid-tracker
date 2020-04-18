import 'package:covidapp/model/countries.dart';
import 'package:flutter/material.dart';

class CountryName with ChangeNotifier {
  Areas areas;
  String countryName;
  String get country => countryName;
  setCountry(String _countryName) {
    countryName = _countryName;
    notifyListeners();
  }
}
