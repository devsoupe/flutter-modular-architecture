import 'package:di_injector/di_injector.dart';
import 'package:feature_a/feature_a.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:navigation/navigation.dart';

@Injectable()
class AScreen extends GoScreen {
  @override
  GoDirection get direction => getIt<DirectionFeatureA>();

  @override
  GoRouterPageBuilder? get pageBuilder => (context, state) => MaterialPage(
        key: state.pageKey,
        child: const FeatureAScreen(),
      );

  AScreen(super.child);
}
