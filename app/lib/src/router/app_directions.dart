import 'package:feature_a/feature_a.dart';
import 'package:feature_b/feature_b.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:navigation/navigation.dart';

@Singleton(as: GoPaths)
class AppDirections extends GoPaths {
  @override
  List<GoScreen> get path => [
        AScreen([
          BScreen([]),
        ]),
      ];

  @override
  GoRouter build() => GoRouter(
        routes: path.map((e) => e.build()).toList(),
      );
}
