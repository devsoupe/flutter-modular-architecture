import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

abstract class GoNavigation<Widget> extends Navigation {
  @override
  Widget build();

  void navigate(BuildContext context, Path route);
}
