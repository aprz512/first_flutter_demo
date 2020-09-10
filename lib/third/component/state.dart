import 'package:fish_redux/fish_redux.dart';

class CardState implements Cloneable<CardState> {
  int index;

  CardState({this.index});

  @override
  CardState clone() {
    return CardState();
  }
}

CardState initState(Map<String, dynamic> args) {
  return CardState();
}
