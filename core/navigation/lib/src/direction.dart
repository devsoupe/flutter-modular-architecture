import 'package:navigation/navigation.dart';

abstract class Direction<T extends Param> {
  abstract final T? param;
}