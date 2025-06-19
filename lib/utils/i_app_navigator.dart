import 'package:flutter/material.dart';

abstract class IAppNavigator {

  GlobalKey<NavigatorState> get navigatorKey;


  Future<T?> pushNamed<T extends Object?>(
    String routeName, {
    Object? args,
  });

  Future<T?> push<T extends Object?>(Route<T> route);

  Future<T?> pushReplacementNamed<T extends Object?, TO extends Object?>(
    String routeName, {
    Object? args,
    TO? result,
  });

  Future<T?> pushNamedAndRemoveUntil<T extends Object?>(
    String routeName, {
    Object? args,
    RoutePredicate? predicate,
  });

  Future<T?> pushAndRemoveUntil<T extends Object?>(
    Route<T> route, {
    RoutePredicate? predicate,
  });

  Future<bool?> maybePop<T extends Object?>([T? result]);

  bool canPop();

  void goBack<T extends Object?>({T? result});

  void popUntil(String route);

  RouteSettings? pageSettings(BuildContext context);
}
