import 'package:fish_redux/fish_redux.dart';

enum ListAction { toDetail, onDetailResult }

class ListActionCreator {
  static Action onToDetailAction(int itemId) {
    return Action(ListAction.toDetail, payload: itemId);
  }

  static Action onDetailResultAction(bool update) {
    return Action(ListAction.onDetailResult, payload: update);
  }
}
