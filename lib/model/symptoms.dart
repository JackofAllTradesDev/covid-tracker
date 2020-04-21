import 'package:flutter/material.dart';

class Symptoms {
  final String symptoms;
  final String imagePath;

  Symptoms({@required this.symptoms, @required this.imagePath});
}

Symptoms cough = Symptoms(
  symptoms: "Cough",
  imagePath: "assets/cough.png",
);
Symptoms fever = Symptoms(
  symptoms: "Fever",
  imagePath: "assets/fever.png",
);

Symptoms shortness = Symptoms(
  symptoms: "Shortness of breath",
  imagePath: "assets/shortness.png",
);

Symptoms soreThroat = Symptoms(
  symptoms: "Sore throat",
  imagePath: "assets/sorethroat.png",
);

Symptoms headache = Symptoms(
  symptoms: "Headeache",
  imagePath: "assets/headache.png",
);

List<Symptoms> symptomsList = [cough, fever, shortness, soreThroat, headache];
