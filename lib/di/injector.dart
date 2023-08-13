import 'package:app/app.dart';
import 'package:feature_a/feature_a.dart';
import 'package:flutter_modular_architecture/di/injector.config.dart';
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
  await configureNavigationDependencies(
    getIt,
    environment: environment,
    environmentFilter: environmentFilter,
  );

  $initGetIt(getIt);
}
