import 'package:go_router/go_router.dart';
import 'package:navigation/navigation.dart';

abstract class GoGraph extends Graph<GoRoute, GoRouter> {
  @override
  abstract final List<GoRoute> routeList;

  @override
  GoRouter build() => GoRouter(
        routes: routeList,
      );
}
