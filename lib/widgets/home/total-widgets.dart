import 'package:covidapp/model/countries.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TotalWidget extends StatelessWidget {
  final Countries countries;

  const TotalWidget({Key key, this.countries}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final f = new DateFormat('MMMM d y hh:mm a');
    final formatter = new NumberFormat("#,###");
    final finalDate = DateTime.parse(countries.lastUpdated);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Align(
              alignment: Alignment.bottomRight,
              child: Text("Last update: ${f.format(finalDate)}",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ))),
        ),
        Card(
          color: Colors.white,
          elevation: 8.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 14.0, left: 14.0),
                    child: Text("Total Cases".toUpperCase(),
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0, left: 14.0),
                    child: Text(formatter.format(countries.totalConfirmed),
                        style: TextStyle(
                          fontSize: 68,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Card(
                color: Colors.white,
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 14.0, left: 14.0),
                          child: Text("Recovered".toUpperCase(),
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0, left: 14.0),
                          child:
                              Text(formatter.format(countries.totalRecovered),
                                  style: TextStyle(
                                    fontSize: 42,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Card(
                color: Colors.white,
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 14.0, left: 14.0),
                          child: Text("Deaths".toUpperCase(),
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0, left: 14.0),
                          child: Text(formatter.format(countries.totalDeaths),
                              style: TextStyle(
                                fontSize: 42,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
