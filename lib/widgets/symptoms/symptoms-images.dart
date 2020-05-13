import 'package:auto_size_text/auto_size_text.dart';
import 'package:covidapp/constants/constants.dart';
import 'package:covidapp/model/symptoms.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SymptomsImagesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Center(
          child: Image.asset(
            "assets/whole.png",
            height: 240,
            width: double.infinity,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(height: 24),
        AutoSizeText(
          "Symptoms that needs medical attention:".toUpperCase().toUpperCase(),
          minFontSize: 8,
          style: TextStyle(
              color: new Color(Constants.colorWarning),
              fontSize: 12,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 12),
        Container(
            height: 180.0,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: symptomsList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        symptomsList[index].imagePath,
                        height: 150,
                        width: 150,
                        fit: BoxFit.contain,
                      ),
                      Expanded(
                        child: Center(
                          child: AutoSizeText(
                            "${symptomsList[index].symptoms}".toUpperCase(),
                            minFontSize: 12,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            )),
        SizedBox(height: 25),
      ],
    );
  }
}
