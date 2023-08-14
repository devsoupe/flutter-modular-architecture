import 'package:app/app.dart';
import 'package:app/src/router/app_directions.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final navigation = appGetIt<GoNavigation>();
  late final directions = appGetIt<AppDirections>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('app : navigation : ${navigation.hashCode}');
    debugPrint('app : directions : ${directions.hashCode}');

    return navigation.build(directions.build());
  }
}
