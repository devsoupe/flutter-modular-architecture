import 'package:navigation/navigation.dart';

abstract class Graph<T extends Screen, ROUTES> {
  abstract final List<T> screenList;

  ROUTES build();
}
