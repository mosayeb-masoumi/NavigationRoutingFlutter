
import 'package:get_it/get_it.dart';
import 'package:routing_example/navigation_service.dart';


final di = GetIt.instance;

void setUpDI(){
  di.registerLazySingleton<NavigationService>(() => NavigationService());
}