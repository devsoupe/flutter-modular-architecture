import 'package:app/src/router/app_graph.dart';
import 'package:di_injector/di_injector.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home/home.dart';
import 'package:injectable/injectable.dart';
import 'package:nav_direction/nav_direction.dart';
import 'package:navigation/navigation.dart';
import 'package:root/root.dart';

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
  void navigate(BuildContext context, Direction direction) {
    switch (direction) {
      case (final RootDirection _):
        context.goNamed(getIt<RootNavScreen>().name, extra: direction.param);
        break;

      case (final HomeDirection _):
        context.goNamed(getIt<HomeNavScreen>().name, extra: direction.param);
        break;
    }
  }
}
