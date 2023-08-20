import 'package:feature_a/feature_a.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:navigation/navigation.dart';

@Singleton()
class AScreen extends GoScreen {
  @override
  String get name => 'a';

  @override
  String get path => '/';

  @override
  GoRouterPageBuilder? get pageBuilder => (context, state) => MaterialPage(
        key: state.pageKey,
        child: const FeatureAScreen(),
      );
}
