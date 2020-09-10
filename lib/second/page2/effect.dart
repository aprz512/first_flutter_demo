import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Action;

import 'action.dart';
import 'state.dart';

Effect<DetailState> buildEffect() {
  return combineEffects(<Object, Effect<DetailState>>{
    DetailAction.updateList: _onUpdateListAction,
  });
}

void _onUpdateListAction(Action action, Context<DetailState> ctx) {
  Navigator.pop(ctx.context, true);
}
