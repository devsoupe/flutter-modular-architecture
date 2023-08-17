import 'package:navigation/navigation.dart';

///
/// 정의 : 앱 전체의 화면 이동 관계 정보
/// 구현 대상 : 앱 하나
/// 구현체 : app 모듈
///
abstract class Graph<T, R extends Screen> {
  abstract final List<R> graph;

  T build();
}
