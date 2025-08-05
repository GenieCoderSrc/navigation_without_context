import 'package:flutter/material.dart';

import 'i_app_navigator.dart';

class AppNavigator implements IAppNavigator {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  @override
  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  @override
  Future<T?> pushNamed<T extends Object?>(
    String routeName, {
    Object? args,
  }) async {
    return navigatorKey.currentState?.pushNamed<T>(routeName, arguments: args);
  }

  @override
  Future<T?> push<T extends Object?>(Route<T> route) async {
    return navigatorKey.currentState?.push<T>(route);
  }

  @override
  Future<T?> pushReplacementNamed<T extends Object?, TO extends Object?>(
    String routeName, {
    Object? args,
    TO? result,
  }) async {
    return navigatorKey.currentState?.pushReplacementNamed<T, TO>(
      routeName,
      arguments: args,
      result: result,
    );
  }

  @override
  Future<T?> pushNamedAndRemoveUntil<T extends Object?>(
    String routeName, {
    Object? args,
    RoutePredicate? predicate,
  }) async {
    return navigatorKey.currentState?.pushNamedAndRemoveUntil<T>(
      routeName,
      predicate ?? (_) => false,
      arguments: args,
    );
  }

  @override
  Future<T?> pushAndRemoveUntil<T extends Object?>(
    Route<T> route, {
    RoutePredicate? predicate,
  }) async {
    return navigatorKey.currentState?.pushAndRemoveUntil<T>(
      route,
      predicate ?? (_) => false,
    );
  }

  @override
  Future<bool?> maybePop<T extends Object?>([T? result]) async {
    return navigatorKey.currentState?.maybePop<T>(result);
  }

  @override
  bool canPop() => navigatorKey.currentState!.canPop();

  @override
  void goBack<T extends Object?>({T? result}) {
    navigatorKey.currentState?.pop<T>(result);
  }

  @override
  void popUntil(String route) {
    navigatorKey.currentState?.popUntil(ModalRoute.withName(route));
  }

  @override
  RouteSettings? pageSettings(BuildContext context) {
    return ModalRoute.of(context)?.settings;
  }
}
