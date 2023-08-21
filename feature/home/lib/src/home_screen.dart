import 'package:flutter/material.dart';
import 'package:home/home.dart';
import 'package:nav_direction/nav_direction.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen(this.param, {Key? key}) : super(key: key);

  final HomeParam param;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    debugPrint('_HomeScreenState : ${widget.param.value}');
    return const HomePage();
  }
}
