import 'package:navigation/navigation.dart';

///
/// 정의 : 화면
/// 구현 대상 : 모든 화면
/// 구현체 : 각각의 feature 모듈
///
abstract class Screen<T> {
  abstract final Direction direction;

  T build();
}
