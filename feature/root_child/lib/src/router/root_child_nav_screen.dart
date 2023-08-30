import 'package:flutter/material.dart';
import 'package:root_child/root_child.dart';
import 'package:injectable/injectable.dart';
import 'package:nav_direction/nav_direction.dart';
import 'package:navigation/navigation.dart';

@Singleton()
class RootChildNavScreen extends GoScreen {
  @override
  String get name => 'root_child';

  @override
  String get path => 'root_child';

  @override
  GoRouterPageBuilder? get pageBuilder => (context, state) => MaterialPage(
        key: state.pageKey,
        child: RootChildScreen(state.extra as RootChildParam),
      );
}