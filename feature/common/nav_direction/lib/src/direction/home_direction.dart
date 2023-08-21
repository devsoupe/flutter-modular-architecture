import 'package:navigation/navigation.dart';

class HomeDirection extends Direction<HomeParam> {
  @override
  final HomeParam? param;

  HomeDirection({this.param});
}

class HomeParam extends Param {
  final int value;

  HomeParam(this.value);
}
