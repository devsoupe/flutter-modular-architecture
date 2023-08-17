import 'package:app/app.dart';
import 'package:di_injector/di_injector.dart';
import 'package:feature_a/feature_a.dart';
import 'package:feature_b/feature_b.dart';
import 'package:flutter_modular_navigation/di/injector.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:navigation/navigation.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(initializerName: r'$initGetIt')
Future<void> configureDependencies({
  String? environment,
  EnvironmentFilter? environmentFilter,
}) async {
  await configureAppDependencies(
    getIt,
    environment: environment,
    environmentFilter: environmentFilter,
  );
  await configureFeatureADependencies(
    getIt,
    environment: environment,
    environmentFilter: environmentFilter,
  );
  await configureFeatureBDependencies(
    getIt,
    environment: environment,
    environmentFilter: environmentFilter,
  );
  await configureNavigationDependencies(
    getIt,
    environment: environment,
    environmentFilter: environmentFilter,
  );
  await configureDiInjectorDependencies(
    getIt,
    environment: environment,
    environmentFilter: environmentFilter,
  );

  $initGetIt(getIt);
}
