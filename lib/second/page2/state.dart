import 'package:fish_redux/fish_redux.dart';

class DetailState implements Cloneable<DetailState> {
  int id;

  @override
  DetailState clone() {
    return DetailState();
  }
}

// push 跳转的数据会传递到这里来
DetailState initState(Map<String, dynamic> args) {
  return DetailState()..id = args['id'];
}
