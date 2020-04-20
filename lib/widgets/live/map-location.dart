import 'dart:async';
import 'package:covidapp/constants/constants.dart';
import 'package:covidapp/model/countries.dart';
import 'package:covidapp/services/countries-data.dart';
import 'package:covidapp/services/country-name.dart';
import 'package:covidapp/services/map-style.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

class MapWidget extends StatefulWidget {
  @override
  MapPageState createState() => MapPageState();
}

class MapPageState extends State<MapWidget> {
  Completer<GoogleMapController> _mapController = Completer();
  @override
  Widget build(BuildContext context) {
    MapStyleClass mapStyleClass = MapStyleClass();
    final _countryData = Provider.of<CountryData>(context, listen: false);
    Countries _countries = _countryData.getCountries();
    CountryName _countryName = Provider.of<CountryName>(context);
    var index = _countries.areas
        .indexWhere((prod) => prod.displayName == _countryName.countryName);
    final CameraPosition _kGooglePlex = CameraPosition(
      target: LatLng(_countries.areas[index].lat, _countries.areas[index].long),
      zoom: 5.897,
    );

    void _onMapCreated(GoogleMapController controller) {
      _mapController.complete(controller);
      mapStyleClass.getJsonFile("assets/darkStyle.json").then((result) {
        controller.setMapStyle(result);
      });
    }

    Future<void> gotoLocation(double lat, double long) async {
      final GoogleMapController controller = await _mapController.future;
      controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
          target: LatLng(lat.roundToDouble(), long.roundToDouble()),
          zoom: 6.123)));
    }

    gotoLocation(_countries.areas[index].lat, _countries.areas[index].long);

    // TODO: implement build
    return Container(
//      height: 220.0,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.black54),
      child: GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: _kGooglePlex,
          zoomControlsEnabled: false,
          onMapCreated: _onMapCreated),
    );
  }
}
