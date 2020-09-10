import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<FourthState> buildReducer() {
  return asReducer(
    <Object, Reducer<FourthState>>{
      FourthAction.action: _onAction,
    },
  );
}

FourthState _onAction(FourthState state, Action action) {
  final FourthState newState = state.clone();
  return newState;
}
