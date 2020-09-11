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

// 在我们的页面设计中，数据全部都给 page 管理，component 的数据也在 page 里面
// 我们使用 connector 将page中的数据传递给 component使用，同时也将 component更改的数据同步回page
// connector 理解成一种数据同步手段
// 两个泛型 T -> P，T 是大数据（页面），P是小数据（页面的组件）
// get 是用来从大数据中获取小数据
// set 是用来将小数据同步给大数据，保持数据同步
// 它支持 + 操作符号，可以看重写代码
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
