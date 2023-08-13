import 'package:app/app.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final Navigation navigation = getIt();
    debugPrint('app : navigation : ${navigation.hashCode}');

    return navigation.router();
  }
}
