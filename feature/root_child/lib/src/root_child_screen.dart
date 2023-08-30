import 'package:flutter/material.dart';
import 'package:root_child/root_child.dart';
import 'package:nav_direction/nav_direction.dart';

class RootChildScreen extends StatefulWidget {
  const RootChildScreen(this.param, {Key? key}) : super(key: key);

  final RootChildParam param;

  @override
  State<RootChildScreen> createState() => _RootChildScreenState();
}

class _RootChildScreenState extends State<RootChildScreen> {
  @override
  Widget build(BuildContext context) {
    debugPrint('_RootChildScreenState : ${widget.param.value}');
    return const RootChildPage();
  }
}
