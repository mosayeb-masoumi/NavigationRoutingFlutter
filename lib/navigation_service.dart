import 'package:flutter/material.dart';

/// > it's a global key for using in pages
// class NavigationService {
//   static GlobalKey<NavigatorState> navigatorKey =
//   GlobalKey<NavigatorState>();
// }


class Routes {
  static const String home = '/';
  static const String setting = '/settings';
  static const String detail = '/detail';
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