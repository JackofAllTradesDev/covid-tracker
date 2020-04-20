import 'package:covidapp/screens/Home.dart';
import 'package:covidapp/services/country-name.dart';
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
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<ThemeChanger>(
        create: (_) => ThemeChanger(ThemeData.light()),
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
