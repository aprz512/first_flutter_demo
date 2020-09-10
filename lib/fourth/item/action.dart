import 'package:fish_redux/fish_redux.dart';
import 'state.dart';

enum ItemAction { check }

class ItemActionCreator {
  static Action onCheckAction(int uniqueId) {
    return Action(ItemAction.check, payload: uniqueId);
  }
}
