import 'package:fish_redux/fish_redux.dart';

class FirstState implements Cloneable<FirstState> {
  int count;

  @override
  FirstState clone() {
    return FirstState()..count = count;
  }
}

FirstState initState(Map<String, dynamic> args) {
  return FirstState()..count = 0;
}
