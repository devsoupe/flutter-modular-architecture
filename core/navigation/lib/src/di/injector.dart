import 'package:navigation/src/di/injector.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@InjectableInit(initializerName: r'$initNavigationGetIt')
Future<void> configureNavigationDependencies(
  GetIt getIt, {
  String? environment,
  EnvironmentFilter? environmentFilter,
}) async {
  getIt.$initNavigationGetIt(
    environment: environment,
    environmentFilter: environmentFilter,
  );
}
