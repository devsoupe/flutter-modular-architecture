import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:navigation/navigation.dart';

@Singleton(as: GoNavigation)
class AppNavigation implements GoNavigation {
  final Color darkBlue = const Color.fromARGB(255, 18, 32, 47);

  @override
  Widget build(GoRouter routes) {
    return MaterialApp.router(
      routerConfig: routes,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      // debugShowCheckedModeBanner: false,
      title: 'Go router',
    );
  }

  @override
  void navigateTo(BuildContext context) {
    debugPrint("app : navigateTo");

    context.goNamed('b');
  }
}
