import 'package:navigation/navigation.dart';

abstract class GoScreen extends Screen<GoRoute> {
  abstract final String name;
  abstract final String path;
  abstract final GoRouterPageBuilder? pageBuilder;

  List<Screen<GoRoute>>? _child;

  @override
  GoScreen child(List<Screen<GoRoute>>? child) {
    _child = child;
    return this;
  }

  @override
  GoRoute build() => GoRoute(
        name: name,
        path: path,
        pageBuilder: pageBuilder,
        routes: _child?.map((e) => e.build()).toList() ?? [],
      );
}
