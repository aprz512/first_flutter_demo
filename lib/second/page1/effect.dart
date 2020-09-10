import 'package:first_flutter_demo/page_route_name.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Action;

import 'action.dart';
import 'state.dart';

Effect<ListState> buildEffect() {
  return combineEffects(<Object, Effect<ListState>>{
    ListAction.toDetail: _onToDetailAction,
  });
}

// 获取从 detail 返回的数据，因为 effect 不能更新数据，所以需要发送一个 action，让 reducer 处理
// 跳转页面传递的数据必须要使用 map
void _onToDetailAction(Action action, Context<ListState> ctx) async {
  // Unhandled Exception: type 'MaterialPageRoute<dynamic>' is not a subtype of type 'Route<bool>' in type cast
  var update = await Navigator.pushNamed(ctx.context, secondDetailPage, arguments: {'id': action.payload});
  ctx.dispatch(ListActionCreator.onDetailResultAction(update as bool));
}
