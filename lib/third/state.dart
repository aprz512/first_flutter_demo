import 'package:first_flutter_demo/third/component/state.dart';
import 'package:first_flutter_demo/third/component2/state.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'component/state.dart';
import 'component/state.dart';

class ThirdState implements Cloneable<ThirdState> {
  CardState cardState1;
  CardState cardState2;
  HeaderState headerState;

  @override
  ThirdState clone() {
    return ThirdState()
      ..cardState1 = cardState1
      ..headerState = headerState
      ..cardState2 = cardState2;
  }
}

ThirdState initState(Map<String, dynamic> args) {
  return ThirdState();
}
