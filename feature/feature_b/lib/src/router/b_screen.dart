import 'package:feature_b/feature_b.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:navigation/navigation.dart';

@Singleton()
class BScreen extends GoScreen {
  @override
  String get name => 'b';

  @override
  String get path => 'b';

  @override
  GoRouterPageBuilder? get pageBuilder => (context, state) => MaterialPage(
        key: state.pageKey,
        child: const FeatureBScreen(),
      );
}
