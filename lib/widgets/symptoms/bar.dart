import 'package:covidapp/constants/constants.dart';
import 'package:flutter/material.dart';

class AppBarSymptomsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_back_ios),
            iconSize: 28.0,
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          Text("STAY HOME",
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}

void showAlert(BuildContext context) {
  Widget okButton = FlatButton(
    child: Text(
      "CLOSE",
      style: TextStyle(
          fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
    ),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(
      "STAY HOME\nSTAY SAFE",
      style: TextStyle(
          fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),
    ),
    content: Text(
        "Warning: to avoid danger of infection, stay home, wash your hands regularly with soap and water, do not".toUpperCase() +
            " handshake regularly avoid physical contact at all cost. if you have the symptoms like cough, fever,"
                .toUpperCase() +
            " headache, and shortness of breath ".toUpperCase() +
            "please, please seek medical attention. This is for you and for everyone."
                .toUpperCase(),
        style: TextStyle(
            fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.w600),
        textAlign: TextAlign.start,
        textDirection: TextDirection.ltr),
    backgroundColor: new Color(Constants.colorWarning),
    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15)),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
