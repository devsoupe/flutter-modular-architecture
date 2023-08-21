import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:navigation/navigation.dart';
import 'package:root/root.dart';

@Singleton()
class RootNavScreen extends GoScreen {
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
