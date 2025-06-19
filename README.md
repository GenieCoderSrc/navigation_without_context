# ⚠️ Deprecated: navigation\_wihout\_context

> **This package is now deprecated.**
> Please use the new package: [**navigation\_without\_context**](https://pub.dev/packages/navigation_without_context)

---

A lightweight Flutter package that simplifies navigation without requiring `BuildContext`. Easily push, pop, replace, or reset navigation stacks using a global navigator key.

---

## 🚨 Deprecated Notice

The `navigation_wihout_context` package has been **renamed** due to a typo in the package name.

✅ Please switch to using the correctly named package:

```yaml
dependencies:
  navigation_without_context: ^0.0.4
```

GitHub: [https://github.com/GenieCoderSrc/navigation\_without\_context](https://github.com/GenieCoderSrc/navigation_without_context)
Pub: [https://pub.dev/packages/navigation\_without\_context](https://pub.dev/packages/navigation_without_context)

---

## Legacy Docs (Deprecated)

### Features

* Navigate between routes without needing context.
* Push named routes with or without arguments.
* Replace routes or remove all previous ones.
* Useful for service-based or ViewModel-driven architecture.

### Getting Started

```yaml
dependencies:
  navigation_wihout_context: ^0.0.1
```

### Usage

1. Set up the `navigatorKey` in your `MaterialApp`:

```dart
import 'package:flutter/material.dart';
import 'package:navigation_wihout_context/navigation_wihout_context.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: AppRouter.navigatorKey,
      routes: {
        '/': (context) => HomePage(),
        '/second': (context) => SecondPage(),
      },
    );
  }
}
```

2. Navigate without `BuildContext`:

```dart
AppRouter.pushNameRoute('/second', arguments: {'message': 'Hello'});
AppRouter.popRoute();
AppRouter.pushReplacementRoute('/second');
AppRouter.pushNamedAndRemoveUntil('/second');
AppRouter.popAndPushNamed('/second');
```

### API

* `AppRouter.navigatorKey`: Global navigator key for use in `MaterialApp`.
* `pushNameRoute(String route, {dynamic arguments})`
* `popRoute()`
* `pushReplacementRoute(String route, {Object? arguments})`
* `pushNamedAndRemoveUntil(String route, {Object? arguments})`
* `popAndPushNamed(String route, {Object? arguments})`

---

## License

MIT License

## Contributions

This package is no longer maintained.
Please contribute or report issues on the new package:

🔗 [navigation\_without\_context GitHub](https://github.com/GenieCoderSrc/navigation_without_context)
