import 'package:flutter/material.dart';
import 'package:get_it_di_global_variable/get_it_di.dart';
import 'package:navigation_wihout_context/di/register_navigator_get_it_di.dart';
import 'package:navigation_wihout_context/navigation_wihout_context.dart';
import 'package:navigation_wihout_context/utils/app_navigator.dart';

void main() {
  registerNavigatorGetItDi();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: AppNavigator.navigationKey,
      title: 'Navigation Example',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/second': (context) => SecondPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => navigator.pushNamed('/second'),
          child: Text('Go to Second Page'),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => navigator.goBack(),
          child: Text('Go Back'),
        ),
      ),
    );
  }
}