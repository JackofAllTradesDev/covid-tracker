import 'package:flutter/material.dart';

class SetStepper with ChangeNotifier {
  int currentStep = 0;
//  SetStepper(this.currentStep);
  int get step => currentStep;
  setStep(int step) {
    currentStep = step;
    notifyListeners();
  }
}
