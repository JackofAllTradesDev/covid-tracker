import 'package:covidapp/model/countries.dart';
import 'package:covidapp/model/timeline.dart';
import 'package:covidapp/screens/CreditsScreen.dart';
import 'package:covidapp/widgets/home/live-data.dart';
import 'package:covidapp/widgets/home/prevention.dart';
import 'package:covidapp/widgets/home/symptoms.dart';
import 'package:covidapp/widgets/home/total-widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  final List<Data> data;
  final List<TimelineData> timeline;

  const HomePage({Key key, this.data, this.timeline}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: SafeArea(
        child: GestureDetector(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      "C",
                      style: TextStyle(
                        fontSize: 62,
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
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "oronavirus".toUpperCase(),
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      "PH".toUpperCase(),
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.info_outline),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CreditPage()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TotalWidget(
                  timeline: timeline,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 12.0, left: 16.0, right: 16.0),
                child: LiveWidget(
                  data: data,
                ),
              ),
//              Padding(
//                padding:
//                    const EdgeInsets.only(top: 12.0, left: 16.0, right: 16.0),
//                child: InfoWidget(),
//              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 12.0, left: 16.0, right: 16.0),
                child: SymptomsWidgets(),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 12.0, left: 16.0, right: 16.0),
                child: PreventionWidget(),
              ),
              SizedBox(
                height: 18.0,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
