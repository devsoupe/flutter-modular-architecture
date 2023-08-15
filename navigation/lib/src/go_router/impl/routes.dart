import 'package:injectable/injectable.dart';
import 'package:navigation/navigation.dart';

@Singleton()
class RouteFeatureA implements Route<GoRouteInfo> {
  @override
  GoRouteInfo build() => GoRouteInfo('a', '/');
}

@Singleton()
class RouteFeatureB implements Route<GoRouteInfo> {
  @override
  GoRouteInfo build() => GoRouteInfo('b', 'b');
}
