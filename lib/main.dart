import 'package:app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular_architecture/di/injector.dart';

void main() async {
  await configureDependencies();
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const App();
  }
}
