import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CreditPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  iconSize: 28.0,
                  color: Colors.black,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text("Back",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold))
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "C",
                        style: TextStyle(
                          fontSize: 84,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "ovid-19".toUpperCase(),
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "oronavirus".toUpperCase(),
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: AutoSizeText(
                  "Have the latest information on Coronavirus disease (COVID-19) with the COVID-PH app. This app displays the latest updates, symptoms, prevention, and a tracker on COVID-19\n\n" +
                      "Our goal is to provide reliable information and help prevent the spread of COVID-19.",
                  minFontSize: 12,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
              child: AutoSizeText("Visit the following sites:",
                  minFontSize: 12,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: AutoSizeText("about-corona.net",
                  minFontSize: 12,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: AutoSizeText("who.int\ncdc.gov",
                  minFontSize: 12,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: AutoSizeText(
                  "CREDITS TO THE OWNERS OF THE VECTORS AND IMAGES",
                  minFontSize: 12,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: AutoSizeText("NO COPYRIGHT INFRINGEMENT INTENTED",
                  minFontSize: 12,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    );
  }
}
