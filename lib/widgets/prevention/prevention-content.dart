import 'package:auto_size_text/auto_size_text.dart';
import 'package:covidapp/constants/constants.dart';
import 'package:flutter/material.dart';

class PreventionContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(right: 16.0, left: 32.0, top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AutoSizeText(
            "Protection",
            minFontSize: 12,
            style: TextStyle(
                color: Colors.white, fontSize: 48, fontWeight: FontWeight.bold),
          ),
          AutoSizeText(
            "COVID-19 Disease",
            minFontSize: 12,
            style: TextStyle(
                color: new Color(Constants.colorWarning),
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 24,
          ),
          AutoSizeText(
            "There is currently no vaccine to prevent this disease. You can protect and help prevent spreading the virus if you: ",
            minFontSize: 12,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 18,
          ),
          Image.asset(
            "assets/closecough.png",
            height: 150,
            width: 150,
            fit: BoxFit.contain,
          ),
          AutoSizeText(
            "Cover your cough",
            minFontSize: 12,
            style: TextStyle(
                color: new Color(Constants.colorActive),
                fontSize: 26,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 12,
          ),
          AutoSizeText(
            "Where washable mask, when sneezing use your elbow to cover your mouth this trick can prevent spreading the virus",
            minFontSize: 12,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 18,
          ),
          Image.asset(
            "assets/washyourhands.png",
            height: 150,
            width: 150,
            fit: BoxFit.contain,
          ),
          AutoSizeText(
            "Wash your hands",
            minFontSize: 12,
            style: TextStyle(
                color: new Color(Constants.colorActive),
                fontSize: 26,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 12,
          ),
          AutoSizeText(
            "Wash your hands with soap for 20 seconds. You can sing any song you want just don't leave the water running",
            minFontSize: 12,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 18,
          ),
          Image.asset(
            "assets/socialdistancing.png",
            height: 150,
            width: 150,
            fit: BoxFit.contain,
          ),
          AutoSizeText(
            "Maintain Social Distancing",
            minFontSize: 12,
            style: TextStyle(
                color: new Color(Constants.colorActive),
                fontSize: 26,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 12,
          ),
          AutoSizeText(
            "According to CDC you must stay away atleast 6 feet from others and you must disinfect everything you touch on mostly on outdoors.",
            minFontSize: 12,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 18,
          ),
          Image.asset(
            "assets/stayalert.png",
            height: 150,
            width: 150,
            fit: BoxFit.contain,
          ),
          AutoSizeText(
            "Stay Informed",
            minFontSize: 12,
            style: TextStyle(
                color: new Color(Constants.colorActive),
                fontSize: 26,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 12,
          ),
          AutoSizeText(
            "This is important. Watch a lot of news and read articles or trending topics about the virus so you wont be left out when something new happened with the disease",
            minFontSize: 12,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
