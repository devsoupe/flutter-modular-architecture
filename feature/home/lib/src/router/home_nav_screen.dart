import 'package:flutter/material.dart';
import 'package:home/home.dart';
import 'package:injectable/injectable.dart';
import 'package:nav_direction/nav_direction.dart';
import 'package:navigation/navigation.dart';

@Singleton()
class HomeNavScreen extends GoScreen {
  @override
  String get name => 'b';

  @override
  String get path => 'b';

  @override
  GoRouterPageBuilder? get pageBuilder => (context, state) => MaterialPage(
        key: state.pageKey,
        child: HomeScreen(state.extra as HomeParam),
      );
}