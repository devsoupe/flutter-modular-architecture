import 'dart:math';

import 'package:di_injector/di_injector.dart';
import 'package:flutter/material.dart';
import 'package:nav_direction/nav_direction.dart';
import 'package:navigation/navigation.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
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
    debugPrint('root : navigation : ${navigation.hashCode}');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Root'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text("Navigate RootChild"),
                onPressed: () {
                  final rootChildDirection = RootChildDirection(param: RootChildParam(Random().nextInt(1000)));
                  navigation.navigate(context, rootChildDirection);
                },
              ),
              ElevatedButton(
                child: const Text("Navigate Home"),
                onPressed: () {
                  final homeDirection = HomeDirection(param: HomeParam(Random().nextInt(1000)));
                  navigation.navigate(context, homeDirection);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
