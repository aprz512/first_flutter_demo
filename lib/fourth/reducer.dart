import 'package:first_flutter_demo/fourth/adapter/state.dart';
import 'package:fish_redux/fish_redux.dart';

import 'action.dart';

Reducer<ListState> buildReducer() {
  return asReducer(
    <Object, Reducer<ListState>>{
      FourthAction.fetchDataSuccess: _onFetchDataSuccess
    },
  );
}

ListState _onFetchDataSuccess(ListState state, Action action) {
  return state.clone()..items = action.payload;
}
