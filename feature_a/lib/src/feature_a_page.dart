import 'package:di_injector/di_injector.dart';
import 'package:flutter/material.dart' hide Navigator;
import 'package:navigation/navigation.dart';

class FeatureAPage extends StatefulWidget {
  const FeatureAPage({
    Key? key,
  }) : super(key: key);

  @override
  State<FeatureAPage> createState() => _FeatureAPageState();
}

class _FeatureAPageState extends State<FeatureAPage> {
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
    debugPrint('feature_a : navigator : ${navigator.hashCode}');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Feature A'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Navigate Feature B"),
          onPressed: () {
            navigator.navigate(context, getIt<DirectionFeatureB>());
          },
        ),
      ),
    );
  }
}
