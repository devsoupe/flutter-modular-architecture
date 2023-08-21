import 'package:nav_direction/nav_direction.dart';
import 'package:root/root.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:navigation/navigation.dart';

@Singleton()
class RootRouter extends GoScreen {
  @override
  String get name => 'a';

  @override
  String get path => '/';

  @override
  GoRouterPageBuilder? get pageBuilder => (context, state) => MaterialPage(
        key: state.pageKey,
        child: const RootScreen(),
      );
}

@Singleton(as: RootDirection)
class RootRouterDirection extends RootDirection {}