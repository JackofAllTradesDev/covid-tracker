import 'package:flutter/material.dart';

class AppBarPreventionWidget extends StatelessWidget {
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
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          Text("Stay safe".toUpperCase(),
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
