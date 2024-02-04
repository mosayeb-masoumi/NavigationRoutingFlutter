import 'package:flutter/material.dart';
import 'package:routing_example/di.dart';
import 'package:routing_example/navigation_service.dart';

void main() {
  setUpDI();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      navigatorKey: di<NavigationService>().navigatorKey,
      onGenerateRoute: RouteGenerator.generateRoute,

    );
  }
}


