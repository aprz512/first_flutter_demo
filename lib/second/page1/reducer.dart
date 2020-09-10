import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ListState> buildReducer() {
  return asReducer(
    <Object, Reducer<ListState>>{
      ListAction.onDetailResult: _onDetailResultAction,
    },
  );
}

ListState _onDetailResultAction(ListState state, Action action) {
  // 返回原来的 state 不会更新 widget
  if (action.payload == null || action.payload == false ) {
    return state;
  }
  final ListState newState = state.clone();
  newState.data = 'new data';
  return newState;
}
