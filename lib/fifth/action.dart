import 'package:fish_redux/fish_redux.dart';

enum OneAction { nextPage }

class OneActionCreator {
  static Action onNextPageAction() {
    return const Action(OneAction.nextPage);
  }
}
