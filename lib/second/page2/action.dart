import 'package:fish_redux/fish_redux.dart';

enum DetailAction { updateList }

class DetailActionCreator {
  static Action onUpdateListAction() {
    return const Action(DetailAction.updateList);
  }
}
