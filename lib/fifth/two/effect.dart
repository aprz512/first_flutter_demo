import 'package:first_flutter_demo/fifth/three/action.dart';
import 'package:first_flutter_demo/page_route_name.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Action;

import 'action.dart';
import 'state.dart';

Effect<TwoState> buildEffect() {
  return combineEffects(
      <Object, Effect<TwoState>>{TwoAction.nextPage: _onAction, ThreeAction.sendToPageTwo: _onReceivedBroadcast});
}

void _onAction(Action action, Context<TwoState> ctx) {
  Navigator.pushNamed(ctx.context, fifthThreePage);
}

void _onReceivedBroadcast(Action action, Context<TwoState> ctx) {
  ctx.broadcast(TwoActionCreator.sendToPageThree());
}
