import 'package:flutter/material.dart';

abstract class Navigation<T> {
  Widget build(T routes);
  void navigateTo(BuildContext context);
}
