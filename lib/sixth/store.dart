import 'package:fish_redux/fish_redux.dart';
import 'reducer.dart';
import 'state.dart';

/// 建立一个全局数据区
/// 目前它的功能只有切换主题
class GlobalStore {
  // Store 里面的泛型是储存的数据类型
  static Store<GlobalState> _globalStore;

  static Store<GlobalState> get store =>
      _globalStore ??= createStore<GlobalState>(GlobalState(), buildReducer());
}
