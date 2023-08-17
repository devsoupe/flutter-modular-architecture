import 'package:navigation/navigation.dart';

abstract class GoScreen extends Screen<GoRoute> {
  @override
  abstract final GoPath path;

  abstract final GoRouterPageBuilder? pageBuilder;

  final List<GoScreen>? child;

  GoScreen(this.child);

  @override
  GoRoute build() => GoRoute(
        name: path.build().name,
        path: path.build().path,
        pageBuilder: pageBuilder,
        routes: child?.map((e) => e.build()).toList() ?? [],
      );
}
