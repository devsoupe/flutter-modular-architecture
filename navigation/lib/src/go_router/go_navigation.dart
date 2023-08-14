import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation/navigation.dart';
import 'package:navigation/src/directions.dart';
import 'package:navigation/src/navigation.dart';

abstract class GoNavigation extends Navigation<GoRouter> {
  @override
  Widget build(GoRouter routes);
}
