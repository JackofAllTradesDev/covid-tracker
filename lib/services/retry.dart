import 'package:covidapp/model/countries.dart';
import 'package:covidapp/model/timeline.dart';
import 'package:flutter/material.dart';

class RetryChanger with ChangeNotifier {
  Future<Countries> refreshController;
  Future<Timeline> refreshTimeline;
  RetryChanger(this.refreshController, this.refreshTimeline);
  getController() => refreshController;
  getTimeLine() => refreshTimeline;

  setController(Future<Countries> controller, Future<Timeline> timeline) {
    refreshController = controller;
    refreshTimeline = timeline;
    notifyListeners();
  }
}
