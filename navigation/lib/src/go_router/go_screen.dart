import 'package:go_router/go_router.dart';
import 'package:navigation/src/screen.dart';

abstract class GoScreen extends Screen<GoRoute> {
  abstract final String name;
  abstract final String path;
  abstract final GoRouterPageBuilder? pageBuilder;

  @override
  GoRoute build(List<GoRoute>? child) => GoRoute(
        name: name,
        path: path,
        pageBuilder: pageBuilder,
        routes: child ?? [],
      );
}
