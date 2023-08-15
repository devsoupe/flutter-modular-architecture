import 'package:navigation/navigation.dart';

abstract class Screen<T> {
  abstract final Route route;

  T build();
}
