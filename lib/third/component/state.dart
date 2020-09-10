import 'package:fish_redux/fish_redux.dart';

import '../state.dart';

class CardState implements Cloneable<CardState> {
  CardState();

  @override
  CardState clone() {
    return CardState();
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
}

// 从 ThirdPage 里面获取 CardPage2 的数据
class Card2Connector extends ConnOp<ThirdState, CardState>
    with ReselectMixin<ThirdState, CardState> {
  @override
  CardState computed(ThirdState state) {
    return state.cardState2.clone();
  }
}
