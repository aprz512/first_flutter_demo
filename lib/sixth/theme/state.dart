import 'dart:ui';

import 'package:first_flutter_demo/sixth/state.dart';
import 'package:fish_redux/fish_redux.dart';

class ThemeState implements Cloneable<ThemeState>, GlobalBaseState {
  @override
  ThemeState clone() {
    return ThemeState()..themeColor = themeColor;
  }

  @override
  Color themeColor;
}

ThemeState initState(Map<String, dynamic> args) {
  return ThemeState();
}
