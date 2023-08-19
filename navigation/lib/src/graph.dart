import 'package:navigation/navigation.dart';

abstract class Graph<T extends Screen, R> {
  abstract final List<T> screenList;

  R build();
}
