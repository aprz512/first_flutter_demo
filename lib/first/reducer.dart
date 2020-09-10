import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<FirstState> buildReducer() {
  return asReducer(
    <Object, Reducer<FirstState>>{
      FirstAction.add: _onAddAction,
    },
  );
}

// 改变计数器的值，因为只改变 数据（state） 就好了，所以这里用不到 effect
FirstState _onAddAction(FirstState state, Action action) {
  final FirstState newState = state.clone();
  newState.count += 1;
  return newState;
}
