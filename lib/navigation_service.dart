
import 'package:flutter/material.dart';
import 'package:routing_example/detail_screen.dart';
import 'package:routing_example/profile_screen.dart';

import 'home_screen.dart';

class Routes {
  static const String home ="/";
  static const String profile ="/profile";
  static const String detail = "/detail";
}



class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey =  GlobalKey<NavigatorState>();
  Future<dynamic>? navigateTo(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState?.pushNamed(routeName, arguments: arguments);
  }
  Future<dynamic>? navigateToReplacement(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState?.pushReplacementNamed(routeName, arguments: arguments);
  }
  void goBack() {
    return navigatorKey.currentState?.pop();
  }

}


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {

      case Routes.detail:
        final arguments = routeSettings.arguments as Map<String, dynamic>?;
        return MaterialPageRoute(builder: (context) => DetailScreen(arguments: arguments));

      case Routes.profile:
        return MaterialPageRoute(builder: (context) => ProfileScreen());

      default:
        return MaterialPageRoute(builder: (context) => HomeScreen());
    }
  }
}