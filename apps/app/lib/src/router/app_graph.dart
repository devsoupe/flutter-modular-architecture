import 'package:di_injector/di_injector.dart';
import 'package:root/root.dart';
import 'package:home/home.dart';
import 'package:injectable/injectable.dart';
import 'package:navigation/navigation.dart';

@Singleton()
class AppGraph extends GoGraph {
  @override
  List<GoScreen> get screenList => [
        getIt<RootRouter>().child([
          getIt<HomeRouter>().child([]),
        ]),
      ];
}
