import 'package:injectable/injectable.dart';
import 'package:navigation/navigation.dart';

@Singleton()
class DirectionFeatureA implements GoDirection {}

@Singleton()
class DirectionFeatureB implements GoDirection {}
