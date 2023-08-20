import 'package:feature_b/src/di/injector.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@InjectableInit(initializerName: r'$initFeatureBGetIt')
Future<void> configureFeatureBDependencies(
  GetIt getIt, {
  String? environment,
  EnvironmentFilter? environmentFilter,
}) async {
  $initFeatureBGetIt(
    getIt,
    environment: environment,
    environmentFilter: environmentFilter,
  );
}