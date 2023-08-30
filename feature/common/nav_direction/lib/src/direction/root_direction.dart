import 'package:navigation/navigation.dart';

class RootDirection extends Direction<RootParam> {
  @override
  final RootParam? param;

  RootDirection({this.param});
}

class RootParam implements Param {}
