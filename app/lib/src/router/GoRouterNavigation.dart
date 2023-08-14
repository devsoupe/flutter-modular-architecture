import 'package:feature_a/feature_a.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:navigation/navigation.dart';

@Singleton(as: Navigation)
class GoRouterNavigation implements Navigation {
  final Color darkBlue = const Color.fromARGB(255, 18, 32, 47);
  final GoRouter _router = GoRouter(routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: const FeatureAScreen(),
      ),
      routes: [],
    ),
  ]);

  @override
  Widget router() {
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      // debugShowCheckedModeBanner: false,
      title: 'Go router',
    );
  }
}
