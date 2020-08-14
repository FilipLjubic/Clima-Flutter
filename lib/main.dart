import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      routes: {
        '/': (context) => CityScreen(),
        '/loading': (context) => LoadingScreen(),
        '/location': (context) => LocationScreen(),
      },
      initialRoute: '/loading',
    );
  }
}
