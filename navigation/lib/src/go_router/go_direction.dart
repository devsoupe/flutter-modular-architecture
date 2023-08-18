import 'package:navigation/navigation.dart';

abstract class GoDirection extends Direction<GoDirectionInfo> {
  @override
  GoDirectionInfo build();
}
