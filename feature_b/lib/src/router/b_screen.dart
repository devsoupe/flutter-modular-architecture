import 'package:di_injector/di_injector.dart';
import 'package:feature_b/feature_b.dart';
import 'package:flutter/material.dart' hide Route;
import 'package:injectable/injectable.dart';
import 'package:navigation/navigation.dart';

@Injectable()
class BScreen extends GoScreen {
  @override
  Route<GoRouteInfo> get route => getIt<RouteFeatureB>();

  @override
  GoRouterPageBuilder? get pageBuilder => (context, state) => MaterialPage(
        key: state.pageKey,
        child: const FeatureBScreen(),
      );

  BScreen(super.child);
}
