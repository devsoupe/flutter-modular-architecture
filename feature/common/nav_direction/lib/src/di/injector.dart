import 'package:nav_direction/src/di/injector.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@InjectableInit(initializerName: r'$initNavDirectionGetIt')
Future<void> configureNavDirectionDependencies(
  GetIt getIt, {
  String? environment,
  EnvironmentFilter? environmentFilter,
}) async {
  getIt.$initNavDirectionGetIt(
    environment: environment,
    environmentFilter: environmentFilter,
  );
}