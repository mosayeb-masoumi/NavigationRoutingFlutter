
import 'package:get_it/get_it.dart';
import 'package:navigation_flutter_test/navigation_service.dart';

final di = GetIt.instance;

void setupDI() {
  di.registerLazySingleton<NavigationService>(() => NavigationService());
}