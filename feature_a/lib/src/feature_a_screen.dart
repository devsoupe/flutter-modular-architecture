import 'package:feature_a/src/feature_a_page.dart';
import 'package:flutter/material.dart';

class FeatureAScreen extends StatefulWidget {
  const FeatureAScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<FeatureAScreen> createState() => _FeatureAScreenState();
}

class _FeatureAScreenState extends State<FeatureAScreen> {
  @override
  Widget build(BuildContext context) {
    return const FeatureAPage();
  }
}
