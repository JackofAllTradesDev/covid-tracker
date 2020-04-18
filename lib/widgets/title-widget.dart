import 'package:covidapp/model/countries.dart';
import 'package:covidapp/services/country-name.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class TitleWidget extends StatelessWidget {
  final List<Areas> area;
  const TitleWidget({Key key, this.area}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CountryName _countryName = Provider.of<CountryName>(context);
    String selected = "Philippines";
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('E, MMMMd y').format(now);
    // TODO: implement build
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Current outbreak",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )),
          Padding(
            padding: const EdgeInsets.only(top: 3.0, bottom: 4.0),
            child: DropdownButton<String>(
                value: _countryName.countryName == null
                    ? selected
                    : _countryName.countryName,
                icon: Icon(Icons.arrow_drop_down),
                isExpanded: true,
                underline: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Colors.transparent, width: 0.0))),
                ),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
                onChanged: (String newValue) {
                  Provider.of<CountryName>(context, listen: false)
                      .setCountry(newValue);
                  selected = newValue;
                },
                items: area
                    .map((fc) => DropdownMenuItem<String>(
                          child: Text(fc.displayName),
                          value: fc.displayName,
                        ))
                    .toList()),
          ),
          Text("$formattedDate",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              )),
        ],
      ),
    );
  }
}
