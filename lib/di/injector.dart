import 'package:app/app.dart';
import 'package:di_injector/di_injector.dart';
import 'package:flutter_modular_navigation/di/injector.config.dart';
import 'package:get_it/get_it.dart';
import 'package:home/home.dart';
import 'package:injectable/injectable.dart';
import 'package:navigation/navigation.dart';
import 'package:root/root.dart';

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
  await configureRootDependencies(
    getIt,
    environment: environment,
    environmentFilter: environmentFilter,
  );
  await configureHomeDependencies(
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
}
