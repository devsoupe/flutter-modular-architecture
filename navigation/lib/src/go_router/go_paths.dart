import 'package:go_router/go_router.dart';
import 'package:navigation/navigation.dart';

abstract class GoPaths extends Paths<GoRouter> {
  abstract final List<GoScreen> path;

  @override
  GoRouter build();
}
