import 'package:feature_a/src/di/injector.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@InjectableInit(initializerName: r'$initFeatureAGetIt')
Future<void> configureFeatureADependencies(
  GetIt getIt, {
  String? environment,
  EnvironmentFilter? environmentFilter,
}) async {
  $initFeatureAGetIt(
    getIt,
    environment: environment,
    environmentFilter: environmentFilter,
  );
}