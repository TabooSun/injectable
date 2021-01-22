import 'dart:io';

// import 'package:get_it/get_it.dart';
// import 'package:mockito/mockito.dart';
// ignore: avoid_relative_lib_imports
// import '../lib/injector/Service.dart';
// ignore: avoid_relative_lib_imports
// import '../lib/injector/injector.dart';
// import '../lib/generated/injector.config.dart';

// final GetIt getIt = GetIt.instance;
void main(List<String> arguments) {
  // await getIt.init(environmentFilter: NoEnvOrContains(platformWeb.name));
  // configInjector(environmentFilter: NoEnvOrContains(platformMobile.name));
  // print(getIt<Service>().environments);
  for (var i = 0; i < 1000; i++) {
    File('lib/samples/sample_$i.dart')
      ..createSync(recursive: true)
      ..writeAsString('''
      import 'package:example/injector/Service.dart';
import 'package:injectable/injectable.dart';

    @injectable
class SampleClass$i {
  SampleClass$i(Service service);
}
''');
  }
  // ..writeAsString('//contents');
}
