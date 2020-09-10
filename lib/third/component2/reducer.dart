import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<HeaderState> buildReducer() {
  return asReducer(
    <Object, Reducer<HeaderState>>{
      HeaderAction.add: _onAction,
    },
  );
}

HeaderState _onAction(HeaderState state, Action action) {
  final HeaderState newState = state.clone();
  newState.count += 1;
  return newState;
}
