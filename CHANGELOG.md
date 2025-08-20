# Changelog

All notable changes to this project will be documented in this file.

## 0.0.4

### Aug 22, 2025

### ✨ Updated

- Updated Dart sdk to 3.9.0
- Removed `flutter_lints` Dependency
- Updated get_it_di_global_variable to 0.0.6

## 0.0.3+1
### Added
- Separated `navigator` instance. 


## 0.0.3
### Added
- Added global navigator key setup with `navigatorKey`. 
- Global `navigator` instance to perform navigation anywhere. 


## 0.0.2
### Added
* `AppNavigator` implementation for navigation without context.
* `IAppNavigator` interface to abstract navigation API.
* `registerNavigatorGetItDi` function to register the navigator using GetIt.
* Global `navigator` instance to perform navigation anywhere.
* Example application demonstrating how to use the package.


## 0.0.1
### Added
- Initial release of `navigation_without_context`.
- Added global navigator key setup.
- Support for navigation methods without BuildContext:
    - `pushNameRoute`
    - `popRoute`
    - `pushReplacementRoute`
    - `pushNamedAndRemoveUntil`
    - `popAndPushNamed`
- Exported `AppRouter` class.
- Included example project demonstrating usage.



