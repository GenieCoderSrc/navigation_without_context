import 'package:flutter/material.dart';
import 'package:navigation_wihout_context/navigation_wihout_context.dart';
import 'package:navigation_wihout_context/utils/app_navigator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: AppNavigator.navigationKey,
      title: 'Navigation Without Context Example',
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
          onPressed: () {
            AppRouter.pushNameRoute('/second',
                arguments: {'message': 'Hello from Home!'});
          },
          child: Text('Go to Second Page'),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    final message = args?['message'] ?? 'No message';

    return Scaffold(
      appBar: AppBar(title: Text('Second Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                AppRouter.popRoute();
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}

