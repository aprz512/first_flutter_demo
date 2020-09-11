import 'package:first_flutter_demo/fifth/two/action.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Action;
import 'package:flutter/material.dart' hide Action;
import 'package:oktoast/oktoast.dart';

import 'state.dart';

Effect<ThreeState> buildEffect() {
  return combineEffects(<Object, Effect<ThreeState>>{TwoAction.sendToPageThree: _onReceivedBroadcast});
}

void _onReceivedBroadcast(Action action, Context<ThreeState> ctx) {
  showToast(
    "Toast：三级页面收到了从二级页面发送的广播！",
    position: ToastPosition.bottom,
    backgroundColor: Colors.black.withOpacity(0.8),
    radius: 13.0,
    textStyle: TextStyle(fontSize: 18.0),
    animationBuilder: Miui10AnimBuilder(),
  );
}
