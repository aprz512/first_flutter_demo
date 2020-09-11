import 'package:fish_redux/fish_redux.dart';

enum TwoAction { nextPage, sendToPageThree }

class TwoActionCreator {
  static Action onNextPageAction() {
    return const Action(TwoAction.nextPage);
  }

  static Action sendToPageThree() {
    return const Action(TwoAction.sendToPageThree);
  }
}
