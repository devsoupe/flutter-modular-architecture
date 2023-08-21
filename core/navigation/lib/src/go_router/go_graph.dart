import 'package:go_router/go_router.dart';
import 'package:navigation/navigation.dart';

abstract class GoGraph extends Graph<GoScreen, GoRouter> {
  @override
  abstract final List<GoScreen> screenList;

  @override
  GoRouter build() => GoRouter(
        routes: screenList.map((e) => e.build()).toList(),
      );
}
