import 'package:flutter/material.dart';

class AppRouter {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static Future<Object?> pushNameRoute(String route,
          {dynamic arguments}) async =>
      navigatorKey.currentState?.pushNamed(route, arguments: arguments);

  static Future<void> popRoute() async => navigatorKey.currentState?.pop();

  static Future<Object?>? popAndPushNamed(String route, {Object? arguments}) =>
      navigatorKey.currentState?.popAndPushNamed(route, arguments: arguments);

  static Future<Object?>? pushReplacementRoute(String route,
          {Object? arguments}) =>
      navigatorKey.currentState
          ?.pushReplacementNamed(route, arguments: arguments);

  static Future<Object?>? pushNamedAndRemoveUntil(String route,
          {Object? arguments}) =>
      navigatorKey.currentState
          ?.pushNamedAndRemoveUntil(route, (Route<dynamic> route) => false);
}

