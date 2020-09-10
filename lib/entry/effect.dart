import 'package:first_flutter_demo/page_route_name.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Action;

import 'action.dart';
import 'state.dart';

Effect<EntryState> buildEffect() {
  return combineEffects(<Object, Effect<EntryState>>{
    EntryAction.firstDemo: _toFirstDemoEffect,
    EntryAction.secondDemo: _toSecondDemoEffect,
  });
}

// 这里做一个跳转，不用改变数据（state），所以用不到 reducer
void _toFirstDemoEffect(Action action, Context<EntryState> ctx) {
  Navigator.pushNamed(ctx.context, firstPage);
}

void _toSecondDemoEffect(Action action, Context<EntryState> ctx) {
  Navigator.pushNamed(ctx.context, secondListPage);
}

