import 'package:covid_tracking/injection.dart';
import 'package:covid_tracking/presentation/pages/tracking/tracking_home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid Tracking',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const TrackingHomeScreen(title: 'Countries'),
    );
  }
}
