import 'package:auto_route/auto_route.dart';
import 'package:covid_tracking/injection.dart';
import 'package:covid_tracking/presentation/core/router/router.gr.dart';
import 'package:flutter/material.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: AutoRouterDelegate(
        _appRouter,
      ),
      title: 'Covid Tracking',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}
