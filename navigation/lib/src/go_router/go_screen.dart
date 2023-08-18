import 'package:navigation/navigation.dart';

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
