import 'package:flutter/material.dart' hide Route;
import 'package:navigation/navigation.dart';

abstract class Navigation<T> {
  T build();

  void navigate(BuildContext context, Route route);
}
