import 'package:nav_direction/src/direction/root_direction.dart';
import 'package:navigation/navigation.dart';

class HomeDirection extends Direction<HomeParam> {
  @override
  final HomeParam? param;

  HomeDirection({this.param});
}

class HomeParam implements Param {
  final int value;

  HomeParam(this.value);
}
