import 'dart:async';

import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapStyleClass {
  Future<String> getJsonFile(String path) async {
    return await rootBundle.loadString(path);
  }
}
