import 'package:feature_a/feature_a.dart';
import 'package:feature_b/feature_b.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:navigation/navigation.dart';

@Singleton()
class AppDirections extends GoDirections {
  @override
  GoRouter build() => GoRouter(
        routes: [
          aGetIt<AScreen>().build([]),
          bGetIt<BScreen>().build([]),
        ],
      );
}
