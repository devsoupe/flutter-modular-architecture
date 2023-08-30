import 'package:nav_direction/src/direction/root_direction.dart';
import 'package:navigation/navigation.dart';

class RootChildDirection extends Direction<RootChildParam> {
  @override
  final RootChildParam? param;

  RootChildDirection({this.param});
}

class RootChildParam extends RootParam implements Param {
  final int value;

  RootChildParam(this.value);
}
