import 'package:covidapp/widgets/prevention/bar.dart';
import 'package:covidapp/widgets/prevention/prevention-content.dart';
import 'package:flutter/material.dart';

class PreventionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: new Color(0xff0D2445),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AppBarPreventionWidget(),
              PreventionContentWidget()
            ],
          ),
        ),
      ),
    );
  }
}
