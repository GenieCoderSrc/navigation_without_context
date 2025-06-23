import 'package:get_it_di_global_variable/get_it_di.dart';
import 'package:navigation_without_context/utils/app_navigator.dart';
import 'package:navigation_without_context/utils/i_app_navigator.dart';

void registerNavigatorGetItDi() {
  sl.registerLazySingleton<IAppNavigator>(() => AppNavigator());
}
