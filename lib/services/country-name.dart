import 'package:covidapp/model/countries.dart';
import 'package:flutter/material.dart';

class CountryName with ChangeNotifier {
  String countryName = "Philippines";
  String get country => countryName;
  setCountry(String _countryName) {
    countryName = _countryName;
    notifyListeners();
  }
}
