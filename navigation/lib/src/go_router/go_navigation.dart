import 'package:flutter/material.dart' hide Navigator;
import 'package:navigation/navigation.dart' hide Navigator;

abstract class GoNavigation extends Navigation<Widget, GoDirection> {
  @override
  Widget build();

  @override
  void navigate(BuildContext context, GoDirection direction);
}
