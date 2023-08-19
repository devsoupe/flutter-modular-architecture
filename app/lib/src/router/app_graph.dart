import 'package:di_injector/di_injector.dart';
import 'package:feature_a/feature_a.dart';
import 'package:feature_b/feature_b.dart';
import 'package:injectable/injectable.dart';
import 'package:navigation/navigation.dart';

@Singleton()
class AppGraph extends GoGraph {
  @override
  List<GoScreen> get screenList => [
        getIt<AScreen>().child([
          getIt<BScreen>().child([]),
        ]),
      ];
}
