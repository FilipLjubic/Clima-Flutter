import 'package:flutter/material.dart';
import 'screens/screens.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  await DotEnv().load('.env');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => LocationScreen(),
        '/loading': (context) => LoadingScreen(),
        '/city': (context) => CityScreen(),
      },
      initialRoute: '/loading',
    );
  }
}
