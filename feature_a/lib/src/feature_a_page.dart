import 'package:flutter/material.dart';

class FeatureAPage extends StatefulWidget {
  const FeatureAPage({
    Key? key,
  }) : super(key: key);

  @override
  State<FeatureAPage> createState() => _FeatureAPageState();
}

class _FeatureAPageState extends State<FeatureAPage> {
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feature A'),
      ),
      body: const Center(child: Text('Feature A Page')),
    );
  }
}
