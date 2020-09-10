import 'package:fish_redux/fish_redux.dart';

import '../state.dart';

class HeaderState implements Cloneable<HeaderState> {
  int count;

  HeaderState({this.count});

  @override
  HeaderState clone() {
    return HeaderState()..count = count;
  }
}

HeaderState initState(Map<String, dynamic> args) {
  return HeaderState(count: 0);
}

// 从 ThirdPage 里面获取 CardPage1 的数据
class HeaderConnector extends ConnOp<ThirdState, HeaderState>
    with ReselectMixin<ThirdState, HeaderState> {
  @override
  HeaderState computed(ThirdState state) {
    return state.headerState.clone();
  }

  // 这个方法会将 HeaderState 里面的数同步到 ThirdState 里面去
  @override
  void set(ThirdState state, HeaderState subState) {
    state.headerState = subState;
  }
}
