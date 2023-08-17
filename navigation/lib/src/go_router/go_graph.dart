import 'package:go_router/go_router.dart';
import 'package:navigation/navigation.dart';

abstract class GoGraph extends Graph<GoRouter, GoScreen> {
  @override
  abstract final List<GoScreen> graph;
  
  @override
  GoRouter build();
}
