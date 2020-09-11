import 'package:first_flutter_demo/page_route_name.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Action;
import 'package:flutter/material.dart' hide Action;
import 'package:oktoast/oktoast.dart';

import 'action.dart';
import 'state.dart';
import 'three/action.dart';

Effect<OneState> buildEffect() {
  return combineEffects(
      <Object, Effect<OneState>>{OneAction.nextPage: _onAction, ThreeAction.sendBroadcast: _onReceivedBroadcastActon});
}

void _onAction(Action action, Context<OneState> ctx) {
  Navigator.pushNamed(ctx.context, fifthTwoPage);
}

void _onReceivedBroadcastActon(Action action, Context<OneState> ctx) {
  showToast(
    "Toast：一级页面收到了三级页面发送的广播！",
    position: ToastPosition.bottom,
    backgroundColor: Colors.black.withOpacity(0.8),
    radius: 13.0,
    textStyle: TextStyle(fontSize: 18.0),
    animationBuilder: Miui10AnimBuilder(),
  );
}
