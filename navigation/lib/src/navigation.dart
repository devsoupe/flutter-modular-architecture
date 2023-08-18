import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

abstract class Navigation<T, R extends Direction> {
  T build();

  void navigate(BuildContext context, R direction);
}
