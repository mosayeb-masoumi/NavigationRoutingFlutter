import 'package:flutter/material.dart';
import 'package:navigation_flutter_test/di.dart';
import 'package:navigation_flutter_test/navigation_service.dart';
import 'package:navigation_flutter_test/pages/detail.dart';
import 'package:navigation_flutter_test/pages/home_page.dart';
import 'package:navigation_flutter_test/pages/setting.dart';

void main() {
  setupDI();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      navigatorKey: di<NavigationService>().navigatorKey,
      onGenerateRoute: (routeSettings) {
        switch (routeSettings.name) {

          case Routes.setting:
            final arguments = routeSettings.arguments as Map<String, dynamic>;
            return MaterialPageRoute(builder: (context) => SettingPage(arguments: arguments));

          case Routes.detail:
            return MaterialPageRoute(builder: (context) => DetailPage());

          default:
            return MaterialPageRoute(builder: (context) => HomePage());
        }
      },
      initialRoute: "/",
    );
  }
}
