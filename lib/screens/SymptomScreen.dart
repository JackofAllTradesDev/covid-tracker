import 'package:covidapp/widgets/symptoms/bar.dart';
import 'package:covidapp/widgets/symptoms/title-description.dart';
import 'package:flutter/material.dart';

class SymptomsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    Future.delayed(Duration.zero, () => showAlert(context));
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AppBarSymptomsWidget(),
                SizedBox(
                  height: 9.0,
                ),
                TitleDescriptionWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
