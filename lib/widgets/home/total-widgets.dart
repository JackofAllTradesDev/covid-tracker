import 'package:covidapp/model/countries.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:auto_size_text/auto_size_text.dart';

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
              height: 120.0,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 14.0, left: 14.0),
                    child: AutoSizeText("Total Cases".toUpperCase(),
                        minFontSize: 18,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0, left: 14.0),
                    child:
                        AutoSizeText(formatter.format(countries.totalConfirmed),
                            minFontSize: 18,
                            maxLines: 1,
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
                child: Container(
                  height: 100.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 14.0, left: 14.0),
                        child: AutoSizeText("Recovered".toUpperCase(),
                            minFontSize: 18,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0, left: 14.0),
                        child: AutoSizeText(
                            formatter.format(countries.totalRecovered),
                            minFontSize: 18,
                            maxLines: 1,
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
            Expanded(
              child: Card(
                color: Colors.white,
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  height: 100.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 14.0, left: 14.0),
                        child: AutoSizeText("Deaths".toUpperCase(),
                            minFontSize: 18,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, left: 14.0, right: 14.0),
                        child: AutoSizeText(
                            formatter.format(countries.totalDeaths),
                            minFontSize: 18,
                            maxLines: 1,
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
            )
          ],
        )
      ],
    );
  }
}
