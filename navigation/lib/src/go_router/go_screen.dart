import 'package:navigation/navigation.dart';
import 'package:navigation/src/screen.dart';

abstract class GoScreen extends Screen<GoRoute> {
  @override
  abstract final Route<GoRouteInfo> route;

  abstract final GoRouterPageBuilder? pageBuilder;

  final List<GoScreen>? screens;

  GoScreen(this.screens);

  @override
  GoRoute build() => GoRoute(
        name: route.build().name,
        path: route.build().path,
        pageBuilder: pageBuilder,
        routes: screens?.map((e) => e.build()).toList() ?? [],
      );
}
