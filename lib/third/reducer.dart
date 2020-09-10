import 'package:first_flutter_demo/third/component2/state.dart';
import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ThirdState> buildReducer() {
  return asReducer(
    <Object, Reducer<ThirdState>>{
      ThirdAction.dataReady: _onDataReadyAction,
    },
  );
}

ThirdState _onDataReadyAction(ThirdState state, Action action) {
  final ThirdState newState = state.clone();
  newState..cardState1 = action.payload[0];
  newState..cardState2 = action.payload[1];
  newState..headerState = HeaderState(count: 0);
  return newState;
}
