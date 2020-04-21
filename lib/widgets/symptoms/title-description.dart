import 'package:auto_size_text/auto_size_text.dart';
import 'package:covidapp/constants/constants.dart';
import 'package:covidapp/widgets/symptoms/symptoms-images.dart';
import 'package:flutter/material.dart';

class TitleDescriptionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AutoSizeText(
                "Symptoms of",
                minFontSize: 12,
                maxLines: 1,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.bold),
              ),
              AutoSizeText(
                "COVID - 19",
                minFontSize: 12,
                maxLines: 1,
                style: TextStyle(
                    color: new Color(Constants.colorWarning),
                    fontSize: 36,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12.0),
              AutoSizeText(
                  "People may be sick with the virus for 1 to 14 days before developing symptoms." +
                      "These symptoms are usually mild and begin gradually. Some people become infected but don’t develop any symptoms and don't feel unwell." +
                      " Most people (about 80%) recover from the disease without needing special treatment",
                  minFontSize: 12,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                  textAlign: TextAlign.start,
                  textDirection: TextDirection.ltr),
              SizedBox(height: 18.0),
              AutoSizeText(
                "Most common symptoms of COVID-19 are:",
                minFontSize: 12,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 24.0),
              Center(
                child: AutoSizeText(
                  "May show up 1-14 days later".toUpperCase(),
                  minFontSize: 12,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 4.0),
              Center(
                child: AutoSizeText(
                  "SYMPTOMS".toUpperCase(),
                  minFontSize: 12,
                  style: TextStyle(
                      color: new Color(Constants.colorWarning),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 18.0),
              SymptomsImagesWidget()
            ],
          )
        ],
      ),
    );
  }
}
