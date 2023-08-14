import 'package:go_router/go_router.dart';
import 'package:navigation/src/directions.dart';

abstract class GoDirections extends Directions<GoRouter> {
  @override
  GoRouter build();
}
