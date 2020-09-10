import 'package:fish_redux/fish_redux.dart';

class ListState implements Cloneable<ListState> {
  String data;

  @override
  ListState clone() {
    return ListState();
  }
}

ListState initState(Map<String, dynamic> args) {
  return ListState()..data = 'old data';
}
