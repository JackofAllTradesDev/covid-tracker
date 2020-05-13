import 'package:covidapp/services/connectivity.dart';
import 'package:covidapp/services/http-service.dart';
import 'package:covidapp/services/retry.dart';
import 'package:covidapp/services/theme.dart';
import 'package:covidapp/widgets/home/future-builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatelessWidget {
  final HttpService httpService = HttpService();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      StreamProvider<ConnectionStatus>.value(
        value: ConnectivityService().connectivityController.stream,
      ),
      ChangeNotifierProvider<ThemeChanger>(
        create: (_) => ThemeChanger(ThemeData.light()),
      ),
      ChangeNotifierProvider<RetryChanger>(
        create: (_) =>
            RetryChanger(httpService.countries(), httpService.timeline()),
      ),
    ], child: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme.getTheme(),
      home: FutureBuilderPage(),
    );
  }
}
