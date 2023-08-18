import 'package:navigation/navigation.dart';

abstract class GoScreen extends Screen<GoRoute> {
  @override
  abstract final GoDirection direction;

  abstract final GoRouterPageBuilder? pageBuilder;

  final List<GoScreen>? child;

  GoScreen(this.child);

  @override
  GoRoute build() => GoRoute(
        name: direction.build().name,
        path: direction.build().path,
        pageBuilder: pageBuilder,
        routes: child?.map((e) => e.build()).toList() ?? [],
      );
}
