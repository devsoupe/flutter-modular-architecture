import 'package:di_injector/di_injector.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

class FeatureAPage extends StatefulWidget {
  const FeatureAPage({
    Key? key,
  }) : super(key: key);

  @override
  State<FeatureAPage> createState() => _FeatureAPageState();
}

class _FeatureAPageState extends State<FeatureAPage> {
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
    debugPrint('feature_a : navigation : ${navigation.hashCode}');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Feature A'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Navigate Feature B"),
          onPressed: () {
            navigation.navigateTo(context, getIt<DirectionFeatureB>());
          },
        ),
      ),
    );
  }
}
