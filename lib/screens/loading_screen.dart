import 'package:clima/screens/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';
import 'package:clima/services/weather.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    dynamic weatherData = await WeatherModel().getLocationData();
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => LocationScreen(locationWeather: weatherData),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LoadingBouncingGrid.circle(
          size: 70.0,
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
