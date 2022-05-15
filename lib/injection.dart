import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:service_motor_mobile/injection.config.dart';

GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection(String env) {
  $initGetIt(getIt, environment: env);
}
