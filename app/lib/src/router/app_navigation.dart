import 'package:di_injector/di_injector.dart';
import 'package:feature_a/feature_a.dart';
import 'package:feature_b/feature_b.dart';
import 'package:flutter/material.dart' hide Navigator;
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:navigation/navigation.dart';

@Singleton(as: GoNavigation)
class AppNavigation extends GoNavigation {
  final Color darkBlue = const Color.fromARGB(255, 18, 32, 47);

  @override
  Widget build() {
    final routers = getIt<GoGraph>().build();

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
  void navigate(BuildContext context, GoDirection direction) {
    switch (direction.runtimeType) {
      case DirectionFeatureA:
        context.goNamed(getIt<AScreen>().name);
        break;

      case DirectionFeatureB:
        context.goNamed(getIt<BScreen>().name);
        break;
    }
  }
}
