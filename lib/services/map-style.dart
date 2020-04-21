import 'dart:async';
import 'package:flutter/services.dart';

class MapStyleClass {
  Future<String> getJsonFile(String path) async {
    return await rootBundle.loadString(path);
  }
}
