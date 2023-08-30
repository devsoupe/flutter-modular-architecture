import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:root_child/src/di/injector.config.dart';

@InjectableInit(initializerName: r'$initRootChildGetIt')
Future<void> configureRootChildDependencies(
  GetIt getIt, {
  String? environment,
  EnvironmentFilter? environmentFilter,
}) async {
  getIt.$initRootChildGetIt(
    environment: environment,
    environmentFilter: environmentFilter,
  );
}
