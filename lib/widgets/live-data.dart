import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LiveWidget extends StatelessWidget {
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
          decoration: BoxDecoration(
            image: DecorationImage(
              image: new AssetImage("assets/test.png"),
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
                    child: Text("LIVE UPDATE".toUpperCase(),
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Text("About Coronavirus",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
