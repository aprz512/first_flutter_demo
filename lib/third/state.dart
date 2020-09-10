import 'package:first_flutter_demo/third/component/state.dart';
import 'package:fish_redux/fish_redux.dart';

class ThirdState implements Cloneable<ThirdState> {

  List<CardState> cards;

  @override
  ThirdState clone() {
    return ThirdState();
  }
}

ThirdState initState(Map<String, dynamic> args) {
  return ThirdState();
}
