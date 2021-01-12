import 'package:injectable/injectable.dart';

// ignore: avoid_relative_lib_imports
import '../lib/injector/Service.dart';
// ignore: avoid_relative_lib_imports
import '../lib/injector/injector.dart';

void main(List<String> arguments) {
  configInjector(environmentFilter: NoEnvOrContains(platformMobile.name));

  print(getIt<Service>().environments);
}
