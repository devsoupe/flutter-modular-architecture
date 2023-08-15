import 'package:flutter/material.dart' hide Route;
import 'package:navigation/navigation.dart';

abstract class GoNavigation<Widget> extends Navigation {
  @override
  Widget build();

  @override
  void navigate(BuildContext context, Route route);
}
