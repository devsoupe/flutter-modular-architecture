import 'package:injectable/injectable.dart';
import 'package:navigation/navigation.dart';

@Singleton()
class DirectionFeatureA implements GoDirection {
  @override
  GoDirectionInfo build() => GoDirectionInfo('a', '/');
}

@Singleton()
class DirectionFeatureB implements GoDirection {
  @override
  GoDirectionInfo build() => GoDirectionInfo('b', 'b');
}
