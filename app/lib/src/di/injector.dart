import 'package:app/src/di/injector.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@InjectableInit(initializerName: r'$initAppGetIt')
Future<void> configureAppDependencies(
  GetIt getIt, {
  String? environment,
  EnvironmentFilter? environmentFilter,
}) async {
  $initAppGetIt(
    getIt,
    environment: environment,
    environmentFilter: environmentFilter,
  );
}