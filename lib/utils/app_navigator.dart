import 'package:flutter/material.dart';

import 'i_app_navigator.dart';

class AppNavigator implements IAppNavigator {
  static final GlobalKey<NavigatorState> navigationKey =
      GlobalKey<NavigatorState>();

  @override
  Future<T?> pushNamed<T extends Object?>(
    String routeName, {
    Object? args,
  }) async {
    return navigationKey.currentState?.pushNamed<T>(
      routeName,
      arguments: args,
    );
  }

  @override
  Future<T?> push<T extends Object?>(Route<T> route) async {
    return navigationKey.currentState?.push<T>(route);
  }

  @override
  Future<T?> pushReplacementNamed<T extends Object?, TO extends Object?>(
    String routeName, {
    Object? args,
    TO? result,
  }) async {
    return navigationKey.currentState?.pushReplacementNamed<T, TO>(
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
    return navigationKey.currentState?.pushNamedAndRemoveUntil<T>(
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
    return navigationKey.currentState?.pushAndRemoveUntil<T>(
      route,
      predicate ?? (_) => false,
    );
  }

  @override
  Future<bool?> maybePop<T extends Object?>([T? result]) async {
    return navigationKey.currentState?.maybePop<T>(result);
  }

  @override
  bool canPop() => navigationKey.currentState!.canPop();

  @override
  void goBack<T extends Object?>({T? result}) {
    navigationKey.currentState?.pop<T>(result);
  }

  @override
  void popUntil(String route) {
    navigationKey.currentState?.popUntil(ModalRoute.withName(route));
  }

  @override
  RouteSettings? pageSettings(BuildContext context) {
    return ModalRoute.of(context)?.settings;
  }
}
