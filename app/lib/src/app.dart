import 'package:di_injector/di_injector.dart';
import 'package:flutter/material.dart' hide Navigator;
import 'package:navigation/navigation.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final navigator = getIt<Navigator>();

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
    debugPrint('app : navigator : ${navigator.hashCode}');

    return navigator.build();
  }
}
