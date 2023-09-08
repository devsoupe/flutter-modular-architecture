import 'package:app/src/router/app_graph.dart';
import 'package:di_injector/di_injector.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home/home.dart';
import 'package:injectable/injectable.dart';
import 'package:nav_direction/nav_direction.dart';
import 'package:navigation/navigation.dart';
import 'package:root/root.dart';
import 'package:root_child/root_child.dart';

@Singleton(as: Navigation)
class AppNavigation extends GoNavigation {
  final Color darkBlue = const Color.fromARGB(255, 18, 32, 47);

  @override
  Widget buildRoot() {
    final routers = getIt<AppGraph>().build();

    return MaterialApp.router(
      routerConfig: routers,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      // debugShowCheckedModeBanner: false,
      title: 'Go router',
    );
  }

  @override
  void navigate(Direction direction) {
    final globalContext = getIt<AppGraph>().getGlobalContext();
    final targetScreen = getScreenBy(direction.runtimeType);

    if (globalContext != null && targetScreen != null) {
      globalContext.goNamed(targetScreen.name, extra: direction.param);
    }
  }

  @override
  GoScreen? getScreenBy(Type type) {
    return switch (type) {
      RootDirection => getIt<RootNavScreen>(),
      RootChildDirection => getIt<RootChildNavScreen>(),
      HomeDirection => getIt<HomeNavScreen>(),
      _ => null
    };
  }
}
