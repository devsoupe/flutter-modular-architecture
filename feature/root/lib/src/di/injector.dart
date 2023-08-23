import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:root/src/di/injector.config.dart';

@InjectableInit(initializerName: r'$initRootGetIt')
Future<void> configureRootDependencies(
  GetIt getIt, {
  String? environment,
  EnvironmentFilter? environmentFilter,
}) async {
  getIt.$initRootGetIt(
    environment: environment,
    environmentFilter: environmentFilter,
  );
}