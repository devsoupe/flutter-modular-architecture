import 'package:di_injector/di_injector.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

class FeatureBPage extends StatefulWidget {
  const FeatureBPage({
    Key? key,
  }) : super(key: key);

  @override
  State<FeatureBPage> createState() => _FeatureBPageState();
}

class _FeatureBPageState extends State<FeatureBPage> {
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
    debugPrint('feature_b : navigation : ${navigation.hashCode}');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Feature B'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Navigate Feature A"),
          onPressed: () =>
              navigation.navigateTo(context, getIt<DirectionFeatureA>()),
        ),
      ),
    );
  }
}
