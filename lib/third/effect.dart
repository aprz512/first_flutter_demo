import 'package:first_flutter_demo/third/component/state.dart';
import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<ThirdState> buildEffect() {
  return combineEffects(<Object, Effect<ThirdState>>{
    // 在生命周期的 initState 时，初始化数据
    Lifecycle.initState: _init,
    // ThirdAction.action: _onAction,
  });
}

// 将页面数据准备好
void _init(Action action, Context<ThirdState> ctx) {
  final List<CardState> cards = <CardState>[CardState(index: 1), CardState(index: 2), CardState(index: 3)];

  ctx.dispatch(ThirdActionCreator.onDataReadyAction(cards));
}
