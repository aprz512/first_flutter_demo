import 'package:fish_redux/fish_redux.dart';

class FourthState implements Cloneable<FourthState> {

  @override
  FourthState clone() {
    return FourthState();
  }
}

FourthState initState(Map<String, dynamic> args) {
  return FourthState();
}
