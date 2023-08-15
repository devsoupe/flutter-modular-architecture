import 'package:di_injector/di_injector.dart';
import 'package:flutter/material.dart' hide Route, Navigator;
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:navigation/navigation.dart';

@Singleton()
class Navigator extends GoNavigation {
  final Color darkBlue = const Color.fromARGB(255, 18, 32, 47);

  @override
  Widget build() {
    final routers = getIt<GoPaths>().build();

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
  void navigate(BuildContext context, Route route) {
    context.goNamed(route.build().name);
  }
}