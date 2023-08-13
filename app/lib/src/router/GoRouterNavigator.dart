import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:feature_a/feature_a.dart';

class GoRouterNavigator implements Navigation {

  @override
  Widget router() {
    return FeatureA();
  }
}
