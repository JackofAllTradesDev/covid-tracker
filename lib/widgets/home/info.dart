import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InfoWidget extends StatelessWidget {
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
              image: new AssetImage("assets/info.png"),
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
                    padding: const EdgeInsets.only(top: 18.0, left: 14.0),
                    child: Text("All you need to know".toUpperCase(),
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 14.0),
                    child: Text("about Covid-19".toUpperCase(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: OutlineButton(
                        child: Text("KNOW MORE".toUpperCase(),
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
