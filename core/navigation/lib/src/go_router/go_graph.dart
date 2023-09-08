import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation/navigation.dart';
import 'package:navigation/src/go_router/go_redirect.dart';

abstract class GoGraph extends Graph<GoScreen, GoRouter> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  Screen? redirect;

  @override
  abstract final List<GoScreen> screenList;

  BuildContext? getGlobalContext() => _navigatorKey.currentContext;

  @override
  GoRouter build() => GoRouter(
      navigatorKey: _navigatorKey,
      debugLogDiagnostics: true,
      routes: screenList.map((e) => e.build()).toList(),
      redirect: (context, state) {
        final goScreen = redirect as GoScreen?;
        if (goScreen != null) {
          return state.namedLocation(goScreen.name);
        }

        return GoRedirect(state).build();
      });
}
