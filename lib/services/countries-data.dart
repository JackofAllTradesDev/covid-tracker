import 'package:covidapp/model/countries.dart';
import 'package:flutter/material.dart';

class CountryData with ChangeNotifier {
  List<Data> _data;
  CountryData(this._data);
  getCountries() => _data;
}
