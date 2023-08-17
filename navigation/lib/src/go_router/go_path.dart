import 'package:navigation/navigation.dart';

abstract class GoPath extends Path<GoPathInfo> {
  @override
  GoPathInfo build();
}
