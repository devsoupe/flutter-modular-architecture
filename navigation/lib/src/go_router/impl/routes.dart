import 'package:injectable/injectable.dart';
import 'package:navigation/navigation.dart';

@Singleton()
class PathFeatureA implements GoPath {
  @override
  GoPathInfo build() => GoPathInfo('a', '/');
}

@Singleton()
class PathFeatureB implements GoPath {
  @override
  GoPathInfo build() => GoPathInfo('b', 'b');
}
