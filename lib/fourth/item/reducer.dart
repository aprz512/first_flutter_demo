import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ItemState> buildReducer() {
  return asReducer(<Object, Reducer<ItemState>>{
    ItemAction.check: _edit,
  });
}

ItemState _edit(ItemState state, Action action) {
  final int id = action.payload;
  // 只更新对应的 item，其他的state 不动，
  if (state.itemDetail.id == id) {
    return state.clone()..itemDetail.checked = !state.itemDetail.checked;
  }
  return state;
}
