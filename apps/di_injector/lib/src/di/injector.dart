import 'package:di_injector/src/di/injector.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(initializerName: r'$initDiInjectorGetIt')
Future<void> configureDiInjectorDependencies(
  GetIt getIt, {
  String? environment,
  EnvironmentFilter? environmentFilter,
}) async {
  $initDiInjectorGetIt(
    getIt,
    environment: environment,
    environmentFilter: environmentFilter,
  );
}
