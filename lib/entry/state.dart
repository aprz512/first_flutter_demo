import 'package:fish_redux/fish_redux.dart';

class EntryState implements Cloneable<EntryState> {

  @override
  EntryState clone() {
    return EntryState();
  }
}

EntryState initState(Map<String, dynamic> args) {
  return EntryState();
}
