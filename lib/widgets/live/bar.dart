import 'package:covidapp/model/countries.dart';
import 'package:covidapp/services/countries-data.dart';
import 'package:covidapp/services/country-name.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppBarLiveWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_back_ios),
            iconSize: 28.0,
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          Text("World Statistics",
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
