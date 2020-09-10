import 'package:first_flutter_demo/third/component/state.dart';
import 'package:fish_redux/fish_redux.dart';

import 'component/state.dart';
import 'component/state.dart';

class ThirdState implements Cloneable<ThirdState> {
  CardState cardState1;
  CardState cardState2;

  @override
  ThirdState clone() {
    return ThirdState()
      ..cardState1 = cardState1
      ..cardState2 = cardState2;
  }
}

ThirdState initState(Map<String, dynamic> args) {
  return ThirdState();
}
