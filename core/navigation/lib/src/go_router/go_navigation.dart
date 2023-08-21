import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

abstract class GoNavigation extends Navigation<Widget, Direction> {
  @override
  Widget buildRoot();

  @override
  void navigate(BuildContext context, Direction direction);
}