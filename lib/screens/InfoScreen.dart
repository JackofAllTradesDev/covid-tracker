import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/virus.png",
              height: 200,
              width: 200,
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 10,
            ),
            AutoSizeText(
              "Coronaviruses (COVID-19)",
              minFontSize: 12,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 32.0),
              child: AutoSizeText(
                "Coronaviruses are a large family of viruses which may cause illness in animals or humans." +
                    "In humans, several coronaviruses are known to cause respiratory infections ranging from the common cold to more severe diseases such as Middle East Respiratory Syndrome (MERS) and Severe Acute Respiratory Syndrome (SARS)." +
                    "The most recently discovered coronavirus causes coronavirus disease COVID-19.",
                minFontSize: 12,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            FlatButton(
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.red)),
              color: Colors.white,
              textColor: Colors.red,
              onPressed: () {
//                launchURL();
              },
              child: Text(
                "LEARN MORE".toUpperCase(),
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//launchURL() async {
//  const url = 'https://www.cdc.gov/coronavirus/2019-ncov/index.html';
//  if (await canLaunch(url)) {
//    await launch(url);
//  } else {
//    throw 'Could not launch $url';
//  }
//}
