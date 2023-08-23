import 'package:home/src/di/injector.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@InjectableInit(initializerName: r'$initHomeGetIt')
Future<void> configureHomeDependencies(
  GetIt getIt, {
  String? environment,
  EnvironmentFilter? environmentFilter,
}) async {
  getIt.$initHomeGetIt(
    environment: environment,
    environmentFilter: environmentFilter,
  );
}