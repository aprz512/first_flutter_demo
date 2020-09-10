import 'package:fish_redux/fish_redux.dart';

import '../state.dart';

class CardState implements Cloneable<CardState> {
  int index;

  CardState({this.index});

  @override
  CardState clone() {
    return CardState()..index = index;
  }
}

CardState initState(Map<String, dynamic> args) {
  return CardState();
}

// 从 ThirdPage 里面获取 CardPage1 的数据
class Card1Connector extends ConnOp<ThirdState, CardState>
    with ReselectMixin<ThirdState, CardState> {
  @override
  CardState computed(ThirdState state) {
    return state.cardState1.clone();
  }

  @override
  void set(ThirdState state, CardState subState) {
    state.cardState1 = subState;
  }
}

// 从 ThirdPage 里面获取 CardPage2 的数据
class Card2Connector extends ConnOp<ThirdState, CardState>
    with ReselectMixin<ThirdState, CardState> {
  @override
  CardState computed(ThirdState state) {
    return state.cardState2.clone();
  }

  @override
  void set(ThirdState state, CardState subState) {
    state.cardState2 = subState;
  }
}
