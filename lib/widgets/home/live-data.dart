import 'package:covidapp/model/countries.dart';
import 'package:covidapp/screens/LiveScreen.dart';
import 'package:flutter/material.dart';

class LiveWidget extends StatelessWidget {
  final Countries countries;

  const LiveWidget({Key key, this.countries}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => LivePage(
                    countries: countries,
                  )),
        )
      },
      child: Card(
          color: Colors.white,
          elevation: 8.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: new AssetImage("assets/test.jpg"),
                fit: BoxFit.cover,
//              alignment: Alignment.center,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 14.0, left: 14.0),
                      child: Text("TRACK CORONAVIRUS".toUpperCase(),
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Text("World Statistics",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
