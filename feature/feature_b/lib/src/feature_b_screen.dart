import 'package:feature_b/src/feature_b_page.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

class FeatureBScreen extends StatefulWidget {
  const FeatureBScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<FeatureBScreen> createState() => _FeatureBScreenState();
}

class _FeatureBScreenState extends State<FeatureBScreen> {
  @override
  Widget build(BuildContext context) {
    return const FeatureBPage();
  }
}
