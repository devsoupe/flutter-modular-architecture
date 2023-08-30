import 'package:di_injector/di_injector.dart';
import 'package:flutter/material.dart';
import 'package:nav_direction/nav_direction.dart';
import 'package:navigation/navigation.dart';

class RootChildPage extends StatefulWidget {
  const RootChildPage({Key? key}) : super(key: key);

  @override
  State<RootChildPage> createState() => _RootChildPageState();
}

class _RootChildPageState extends State<RootChildPage> {
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
    debugPrint('root_child : navigation : ${navigation.hashCode}');

    return Scaffold(
      appBar: AppBar(
        title: const Text('RootChild'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Navigate Root"),
          onPressed: () => navigation.navigate(context, RootDirection()),
        ),
      ),
    );
  }
}
