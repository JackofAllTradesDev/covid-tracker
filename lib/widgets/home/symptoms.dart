import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SymptomsWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final formatter = new NumberFormat("#,###");
    return Card(
        color: Colors.white,
        elevation: 8.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Container(
          height: 180.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: new AssetImage("assets/symptoms.png"),
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
                    child: Text("5 symptoms of".toUpperCase(),
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Text("Coronavirus".toUpperCase(),
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: OutlineButton(
                        child: Text("learn more".toUpperCase(),
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                        onPressed: () {}, //callback when button is clicked
                        borderSide: BorderSide(
                          color: Colors.white, //Color of the border
                          style: BorderStyle.solid, //Style of the border
                          width: 0.8, //width of the border
                        ),
                      )),
                ],
              ),
            ),
          ),
        ));
  }
}
