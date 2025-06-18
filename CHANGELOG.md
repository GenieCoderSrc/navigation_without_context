# Changelog

All notable changes to this project will be documented in this file.

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
- Initial release of `navigation_wihout_context`.
- Added global navigator key setup.
- Support for navigation methods without BuildContext:
    - `pushNameRoute`
    - `popRoute`
    - `pushReplacementRoute`
    - `pushNamedAndRemoveUntil`
    - `popAndPushNamed`
- Exported `AppRouter` class.
- Included example project demonstrating usage.



