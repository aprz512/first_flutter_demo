import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<FourthState> buildEffect() {
  return combineEffects(<Object, Effect<FourthState>>{
    FourthAction.action: _onAction,
  });
}

void _onAction(Action action, Context<FourthState> ctx) {
}
