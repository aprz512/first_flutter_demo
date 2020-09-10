import 'package:fish_redux/fish_redux.dart';

enum HeaderAction { add }

class HeaderActionCreator {
  static Action onAddAction() {
    return const Action(HeaderAction.add);
  }
}
