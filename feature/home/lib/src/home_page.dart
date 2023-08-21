import 'package:di_injector/di_injector.dart';
import 'package:flutter/material.dart';
import 'package:nav_direction/nav_direction.dart';
import 'package:navigation/navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final navigation = getIt<Navigation>();

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
    debugPrint('home : navigation : ${navigation.hashCode}');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Navigate Root"),
          onPressed: () =>
              navigation.navigate(context, getIt<RootDirection>()),
        ),
      ),
    );
  }
}
