import 'package:covidapp/services/http-service.dart';
import 'package:covidapp/services/retry.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HttpService httpService = HttpService();
    var controller = Provider.of<RetryChanger>(context);
    // TODO: implement build
    return Scaffold(
      backgroundColor: new Color(0xffFFFFFF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/error.png",
              height: 320,
              width: 300,
              fit: BoxFit.contain,
            ),
            FlatButton(
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.red)),
              color: Colors.white,
              textColor: Colors.red,
              onPressed: () async {
                controller.setController(httpService.refreshCountries());
              },
              child: Text(
                "Retry",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
