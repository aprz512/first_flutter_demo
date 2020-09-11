import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';

// 这里抽取了一个父类，用于数据同步
// 所有需要使用这个类的页面的 state，都需要继承这个类，这样数据才能同步
// 同步的代码在 main 的 AbstractRoutes 里面，是一个 visitor 函数
abstract class GlobalBaseState {
  Color get themeColor;
  set themeColor(Color color);
}

class GlobalState implements GlobalBaseState, Cloneable<GlobalState> {
  @override
  Color themeColor;

  @override
  GlobalState clone() {
    return GlobalState();
  }
}
