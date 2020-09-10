import 'package:first_flutter_demo/third/component/state.dart';
import 'package:fish_redux/fish_redux.dart';

enum ThirdAction { dataReady }

class ThirdActionCreator {
  static Action onDataReadyAction(List<CardState> cards) {
    return Action(ThirdAction.dataReady, payload: cards);
  }
}
