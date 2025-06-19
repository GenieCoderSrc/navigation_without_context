# navigation_without_context

A Flutter package that allows navigation without needing a `BuildContext`, built on top of `GetIt` and Flutter's navigation system.

## Features

* Navigate using route names or `Route` objects
* Replace routes or remove routes until a condition is met
* Check if navigation stack can pop
* Go back with or without a result
* Pop until a specific route
* Access current `RouteSettings`

## Getting Started

### Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  navigation_without_context: <latest_version>
```

Then run:

```bash
flutter pub get
```

### Import

```dart
import 'package:navigation_without_context/navigation_without_context.dart';
```

## Usage

### Step 1: Register the Navigator

```dart
void main() {
  registerNavigatorGetItDi();
  runApp(MyApp());
}
```

### Step 2: Add `navigatorKey` to MaterialApp

```dart
MaterialApp(
  navigatorKey: navigator.navigatorKey,
  // other properties...
)
```

### Step 3: Use Anywhere

```dart
navigator.pushNamed('/home');

navigator.goBack();
```

## API

The `IAppNavigator` interface includes:

```dart
Future<T?> pushNamed<T>(String routeName, {Object? args});
Future<T?> push<T>(Route<T> route);
Future<T?> pushReplacementNamed<T, TO>(String routeName, {Object? args, TO? result});
Future<T?> pushNamedAndRemoveUntil<T>(String routeName, {Object? args, RoutePredicate? predicate});
Future<T?> pushAndRemoveUntil<T>(Route<T> route, {RoutePredicate? predicate});
Future<bool?> maybePop<T>([T? result]);
bool canPop();
void goBack<T>({T? result});
void popUntil(String route);
RouteSettings? pageSettings(BuildContext context);
```

## Dependencies

* `get_it_di_global_variable`: Used for dependency injection.

## License

MIT
