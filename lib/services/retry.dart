import 'package:covidapp/model/countries.dart';
import 'package:flutter/material.dart';

class RetryChanger with ChangeNotifier {
  Future<Countries> refreshController;
  RetryChanger(this.refreshController);
  getController() => refreshController;

  setController(Future<Countries> controller) {
    refreshController = controller;
    notifyListeners();
  }
}
